
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint_t ;
typedef int provname ;
struct TYPE_13__ {scalar_t__ p_pid; int p_lflag; int p_dtrace_probes; } ;
typedef TYPE_1__ proc_t ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ fasttrap_provider_type_t ;
struct TYPE_14__ {scalar_t__ ftp_pid; scalar_t__ ftp_provider_type; int ftp_mtx; struct TYPE_14__* ftp_next; int ftp_provid; int ftp_name; int ftp_retired; int * ftp_proc; int ftp_cmtx; } ;
typedef TYPE_2__ fasttrap_provider_t ;
struct TYPE_15__ {int ftb_mtx; TYPE_2__* ftb_data; } ;
typedef TYPE_3__ fasttrap_bucket_t ;
typedef int dtrace_pattr_t ;
typedef int cred_t ;
struct TYPE_16__ {TYPE_3__* fth_table; } ;


 int ASSERT (int) ;
 int DTRACE_PRIV_OWNER ;
 int DTRACE_PRIV_PROC ;
 int DTRACE_PRIV_ZONEOWNER ;
 int DTRACE_PROVNAMELEN ;
 size_t FASTTRAP_PROVS_INDEX (scalar_t__,char const*) ;
 int KM_SLEEP ;
 int P_LEXIT ;
 int P_LINVFORK ;
 scalar_t__ dtrace_register (char*,int const*,int,int *,int *,TYPE_2__*,int *) ;
 int fasttrap_lck_attr ;
 int fasttrap_lck_grp ;
 int * fasttrap_proc_lookup (scalar_t__) ;
 int fasttrap_provider_free (TYPE_2__*) ;
 TYPE_8__ fasttrap_provs ;
 int * kauth_cred_proc_ref (TYPE_1__*) ;
 int kauth_cred_unref (int **) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int const pid_attr ;
 int pid_pops ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int snprintf (char*,int,char*,char const*,int ) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int) ;
 int usdt_pops ;

__attribute__((used)) static fasttrap_provider_t *
fasttrap_provider_lookup(proc_t *p, fasttrap_provider_type_t provider_type, const char *name,
    const dtrace_pattr_t *pattr)
{
 pid_t pid = p->p_pid;
 fasttrap_provider_t *fp, *new_fp = ((void*)0);
 fasttrap_bucket_t *bucket;
 char provname[DTRACE_PROVNAMELEN];
 cred_t *cred;

 ASSERT(strlen(name) < sizeof (fp->ftp_name));
 ASSERT(pattr != ((void*)0));

 bucket = &fasttrap_provs.fth_table[FASTTRAP_PROVS_INDEX(pid, name)];
 lck_mtx_lock(&bucket->ftb_mtx);




 for (fp = bucket->ftb_data; fp != ((void*)0); fp = fp->ftp_next) {
  if (fp->ftp_pid == pid &&
      fp->ftp_provider_type == provider_type &&
      strncmp(fp->ftp_name, name, sizeof(fp->ftp_name)) == 0 &&
      !fp->ftp_retired) {
   lck_mtx_lock(&fp->ftp_mtx);
   lck_mtx_unlock(&bucket->ftb_mtx);
   return (fp);
  }
 }





 lck_mtx_unlock(&bucket->ftb_mtx);





 proc_lock(p);
 if (p->p_lflag & (P_LINVFORK | P_LEXIT)) {
  proc_unlock(p);
  return (((void*)0));
 }






 p->p_dtrace_probes++;







 cred = kauth_cred_proc_ref(p);
 proc_unlock(p);

 new_fp = kmem_zalloc(sizeof (fasttrap_provider_t), KM_SLEEP);
 ASSERT(new_fp != ((void*)0));
 new_fp->ftp_pid = p->p_pid;
 new_fp->ftp_proc = fasttrap_proc_lookup(pid);
 new_fp->ftp_provider_type = provider_type;




 lck_mtx_init(&new_fp->ftp_mtx, fasttrap_lck_grp, fasttrap_lck_attr);
 lck_mtx_init(&new_fp->ftp_cmtx, fasttrap_lck_grp, fasttrap_lck_attr);

 ASSERT(new_fp->ftp_proc != ((void*)0));

 lck_mtx_lock(&bucket->ftb_mtx);





 for (fp = bucket->ftb_data; fp != ((void*)0); fp = fp->ftp_next) {
  if (fp->ftp_pid == pid && strncmp(fp->ftp_name, name, sizeof(fp->ftp_name)) == 0 &&
      !fp->ftp_retired) {
   lck_mtx_lock(&fp->ftp_mtx);
   lck_mtx_unlock(&bucket->ftb_mtx);
   fasttrap_provider_free(new_fp);
   kauth_cred_unref(&cred);
   return (fp);
  }
 }

 (void) strlcpy(new_fp->ftp_name, name, sizeof(new_fp->ftp_name));
 if (snprintf(provname, sizeof (provname), "%s%u", name, (uint_t)pid) >=
     (int)sizeof (provname) ||
     dtrace_register(provname, pattr,
     DTRACE_PRIV_PROC | DTRACE_PRIV_OWNER | DTRACE_PRIV_ZONEOWNER, cred,
     pattr == &pid_attr ? &pid_pops : &usdt_pops, new_fp,
     &new_fp->ftp_provid) != 0) {
  lck_mtx_unlock(&bucket->ftb_mtx);
  fasttrap_provider_free(new_fp);
  kauth_cred_unref(&cred);
  return (((void*)0));
 }

 new_fp->ftp_next = bucket->ftb_data;
 bucket->ftb_data = new_fp;

 lck_mtx_lock(&new_fp->ftp_mtx);
 lck_mtx_unlock(&bucket->ftb_mtx);

 kauth_cred_unref(&cred);

 return (new_fp);
}
