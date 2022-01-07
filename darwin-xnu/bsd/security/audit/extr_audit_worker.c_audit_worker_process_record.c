
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ar_errno; int ar_subj_asid; int ar_event; int ar_subj_auid; } ;
struct kaudit_record {int k_ar_commit; TYPE_1__ k_ar; int k_ulen; int k_udata; } ;
struct au_record {int len; int data; } ;
typedef int au_id_t ;
typedef int au_event_t ;
typedef int au_class_t ;


 int AR_COMMIT_KERNEL ;
 int AR_COMMIT_USER ;
 int AR_PRESELECT_FILTER ;
 int AR_PRESELECT_PIPE ;
 int AR_PRESELECT_TRAIL ;
 int AR_PRESELECT_USER_PIPE ;
 int AR_PRESELECT_USER_TRAIL ;
 int AUDIT_WORKER_SX_ASSERT () ;
 int AUDIT_WORKER_SX_XLOCK () ;
 int AUDIT_WORKER_SX_XUNLOCK () ;
 int AU_PRS_FAILURE ;
 int AU_PRS_SUCCESS ;



 int au_event_class (int ) ;
 int audit_ctx ;
 int audit_pipe_submit (int ,int ,int ,int,int,int ,int ) ;
 int audit_pipe_submit_user (int ,int ) ;
 int audit_record_write (int ,int *,int ,int ) ;
 int audit_sdev_submit (int ,int ,int ,int ) ;
 int audit_vp ;
 int kau_free (struct au_record*) ;
 int kaudit_to_bsm (struct kaudit_record*,struct au_record**) ;
 int panic (char*,int) ;
 int printf (char*) ;

__attribute__((used)) static void
audit_worker_process_record(struct kaudit_record *ar)
{
 struct au_record *bsm;
 au_class_t class;
 au_event_t event;
 au_id_t auid;
 int error, sorf;
 int trail_locked;






 if (((ar->k_ar_commit & AR_COMMIT_USER) &&
     (ar->k_ar_commit & AR_PRESELECT_USER_TRAIL)) ||
     (ar->k_ar_commit & AR_PRESELECT_TRAIL)) {
  AUDIT_WORKER_SX_XLOCK();
  trail_locked = 1;
 } else
  trail_locked = 0;





 if ((ar->k_ar_commit & AR_COMMIT_USER) &&
     (ar->k_ar_commit & AR_PRESELECT_USER_TRAIL)) {
  AUDIT_WORKER_SX_ASSERT();
  audit_record_write(audit_vp, &audit_ctx, ar->k_udata,
      ar->k_ulen);
 }

 if ((ar->k_ar_commit & AR_COMMIT_USER) &&
     (ar->k_ar_commit & AR_PRESELECT_USER_PIPE))
  audit_pipe_submit_user(ar->k_udata, ar->k_ulen);

 if (!(ar->k_ar_commit & AR_COMMIT_KERNEL) ||
     ((ar->k_ar_commit & AR_PRESELECT_PIPE) == 0 &&
     (ar->k_ar_commit & AR_PRESELECT_TRAIL) == 0 &&
     (ar->k_ar_commit & AR_PRESELECT_FILTER) == 0))
  goto out;

 auid = ar->k_ar.ar_subj_auid;
 event = ar->k_ar.ar_event;
 class = au_event_class(event);
 if (ar->k_ar.ar_errno == 0)
  sorf = AU_PRS_SUCCESS;
 else
  sorf = AU_PRS_FAILURE;

 error = kaudit_to_bsm(ar, &bsm);
 switch (error) {
 case 129:
  goto out;

 case 130:
  printf("audit_worker_process_record: BSM_FAILURE\n");
  goto out;

 case 128:
  break;

 default:
  panic("kaudit_to_bsm returned %d", error);
 }

 if (ar->k_ar_commit & AR_PRESELECT_TRAIL) {
  AUDIT_WORKER_SX_ASSERT();
  audit_record_write(audit_vp, &audit_ctx, bsm->data, bsm->len);
 }

 if (ar->k_ar_commit & AR_PRESELECT_PIPE)
  audit_pipe_submit(auid, event, class, sorf,
      ar->k_ar_commit & AR_PRESELECT_TRAIL, bsm->data,
      bsm->len);

 if (ar->k_ar_commit & AR_PRESELECT_FILTER) {





  audit_sdev_submit(auid, ar->k_ar.ar_subj_asid, bsm->data,
      bsm->len);
 }

 kau_free(bsm);
out:
 if (trail_locked)
  AUDIT_WORKER_SX_XUNLOCK();
}
