
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct proc_exitreasoninfo {scalar_t__ eri_reason_buf_size; int eri_kcd_buf; int eri_flags; int eri_code; int eri_namespace; } ;
struct proc_exitreasonbasicinfo {scalar_t__ beri_reason_buf_size; int beri_flags; int beri_code; int beri_namespace; } ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_7__ {int osr_flags; int osr_code; int osr_namespace; int * osr_kcd_buf; int osr_kcd_descriptor; } ;
struct TYPE_6__ {scalar_t__ p_ppid; int p_lflag; scalar_t__ p_oppid; TYPE_5__* p_exit_reason; } ;


 int EACCES ;
 int ENOENT ;
 int ENOMEM ;
 TYPE_5__* OS_REASON_NULL ;
 int P_LTRACED ;
 int assert (int) ;
 int copyout (int *,int ,scalar_t__) ;
 scalar_t__ kcdata_memory_get_used_bytes (int *) ;
 int proc_lock (TYPE_1__*) ;
 scalar_t__ proc_selfpid () ;
 int proc_unlock (TYPE_1__*) ;

int
proc_pidexitreasoninfo(proc_t p, struct proc_exitreasoninfo *peri, struct proc_exitreasonbasicinfo *pberi)
{
 uint32_t reason_data_size = 0;
 int error = 0;
 pid_t selfpid = proc_selfpid();

 proc_lock(p);




 assert((peri != ((void*)0)) || (pberi != ((void*)0)));
 assert((peri == ((void*)0)) || (pberi == ((void*)0)));





 do {
  if (p->p_ppid == selfpid)
   break;

  if ((p->p_lflag & P_LTRACED) != 0 &&
      (p->p_oppid == selfpid))
   break;

  proc_unlock(p);
  return EACCES;
 } while (0);

 if (p->p_exit_reason == OS_REASON_NULL) {
  proc_unlock(p);
  return ENOENT;
 }

 if (p->p_exit_reason->osr_kcd_buf != ((void*)0)) {
  reason_data_size = kcdata_memory_get_used_bytes(&p->p_exit_reason->osr_kcd_descriptor);
 }

 if (peri != ((void*)0)) {
  peri->eri_namespace = p->p_exit_reason->osr_namespace;
  peri->eri_code = p->p_exit_reason->osr_code;
  peri->eri_flags = p->p_exit_reason->osr_flags;

  if ((peri->eri_kcd_buf == 0) || (peri->eri_reason_buf_size < reason_data_size)) {
   proc_unlock(p);
   return ENOMEM;
  }

  peri->eri_reason_buf_size = reason_data_size;
  if (reason_data_size != 0) {
   error = copyout(p->p_exit_reason->osr_kcd_buf, peri->eri_kcd_buf, reason_data_size);
  }
 } else {
  pberi->beri_namespace = p->p_exit_reason->osr_namespace;
  pberi->beri_code = p->p_exit_reason->osr_code;
  pberi->beri_flags = p->p_exit_reason->osr_flags;
  pberi->beri_reason_buf_size = reason_data_size;
 }

 proc_unlock(p);

 return error;
}
