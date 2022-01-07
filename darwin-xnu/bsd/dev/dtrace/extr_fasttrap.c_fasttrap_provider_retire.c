
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ p_pid; } ;
typedef TYPE_2__ proc_t ;
struct TYPE_9__ {scalar_t__ ftp_pid; int ftp_retired; scalar_t__ ftp_mcount; int ftp_marked; int ftp_mtx; int ftp_provid; scalar_t__ ftp_pcount; TYPE_1__* ftp_proc; int ftp_name; struct TYPE_9__* ftp_next; } ;
typedef TYPE_3__ fasttrap_provider_t ;
struct TYPE_10__ {int ftb_mtx; TYPE_3__* ftb_data; } ;
typedef TYPE_4__ fasttrap_bucket_t ;
typedef int dtrace_provider_id_t ;
struct TYPE_11__ {TYPE_4__* fth_table; } ;
struct TYPE_7__ {scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; } ;


 int ASSERT (int) ;
 int FASTTRAP_CLEANUP_PROVIDER ;
 size_t FASTTRAP_PROVS_INDEX (scalar_t__,char const*) ;
 int atomic_add_32 (int *,scalar_t__) ;
 int atomic_add_64 (scalar_t__*,int) ;
 int dtrace_invalidate (int ) ;
 int fasttrap_pid_cleanup (int ) ;
 TYPE_5__ fasttrap_provs ;
 int fasttrap_retired ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static void
fasttrap_provider_retire(proc_t *p, const char *name, int mprov)
{
 fasttrap_provider_t *fp;
 fasttrap_bucket_t *bucket;
 dtrace_provider_id_t provid;
 ASSERT(strlen(name) < sizeof (fp->ftp_name));

 bucket = &fasttrap_provs.fth_table[FASTTRAP_PROVS_INDEX(p->p_pid, name)];
 lck_mtx_lock(&bucket->ftb_mtx);

 for (fp = bucket->ftb_data; fp != ((void*)0); fp = fp->ftp_next) {
  if (fp->ftp_pid == p->p_pid && strncmp(fp->ftp_name, name, sizeof(fp->ftp_name)) == 0 &&
      !fp->ftp_retired)
   break;
 }

 if (fp == ((void*)0)) {
  lck_mtx_unlock(&bucket->ftb_mtx);
  return;
 }

 lck_mtx_lock(&fp->ftp_mtx);
 ASSERT(!mprov || fp->ftp_mcount > 0);
 if (mprov && --fp->ftp_mcount != 0) {
  lck_mtx_unlock(&fp->ftp_mtx);
  lck_mtx_unlock(&bucket->ftb_mtx);
  return;
 }
 atomic_add_64(&fp->ftp_proc->ftpc_acount, -1);
 ASSERT(fp->ftp_proc->ftpc_acount < fp->ftp_proc->ftpc_rcount);





 atomic_add_32(&fasttrap_retired, fp->ftp_pcount);
 fp->ftp_pcount = 0;

 fp->ftp_retired = 1;
 fp->ftp_marked = 1;
 provid = fp->ftp_provid;
 lck_mtx_unlock(&fp->ftp_mtx);






 dtrace_invalidate(provid);

 lck_mtx_unlock(&bucket->ftb_mtx);

 fasttrap_pid_cleanup(FASTTRAP_CLEANUP_PROVIDER);
}
