
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ftp_ccount; scalar_t__ ftp_mcount; scalar_t__ ftp_rcount; struct TYPE_5__* ftp_next; scalar_t__ ftp_marked; int ftp_provid; int ftp_mtx; int ftp_retired; } ;
typedef TYPE_1__ fasttrap_provider_t ;
struct TYPE_6__ {int ftb_mtx; int ftb_data; } ;
typedef TYPE_2__ fasttrap_bucket_t ;
typedef int dtrace_provider_id_t ;
struct TYPE_7__ {unsigned int fth_nent; TYPE_2__* fth_table; } ;


 int dtrace_condense (int ) ;
 scalar_t__ dtrace_unregister (int ) ;
 int fasttrap_max ;
 int fasttrap_provider_free (TYPE_1__*) ;
 TYPE_3__ fasttrap_provs ;
 int fasttrap_total ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static unsigned int
fasttrap_pid_cleanup_providers(void)
{
 fasttrap_provider_t **fpp, *fp;
 fasttrap_bucket_t *bucket;
 dtrace_provider_id_t provid;
 unsigned int later = 0, i;







 for (i = 0; i < fasttrap_provs.fth_nent; i++) {
  bucket = &fasttrap_provs.fth_table[i];
  lck_mtx_lock(&bucket->ftb_mtx);
  fpp = (fasttrap_provider_t **)&bucket->ftb_data;

  while ((fp = *fpp) != ((void*)0)) {
   if (!fp->ftp_marked) {
    fpp = &fp->ftp_next;
    continue;
   }

   lck_mtx_lock(&fp->ftp_mtx);







   if (fp->ftp_ccount != 0 ||
       fp->ftp_mcount != 0) {
    fp->ftp_marked = 0;
    lck_mtx_unlock(&fp->ftp_mtx);
    continue;
   }

   if (!fp->ftp_retired || fp->ftp_rcount != 0)
    fp->ftp_marked = 0;

   lck_mtx_unlock(&fp->ftp_mtx);
   provid = fp->ftp_provid;
   if (dtrace_unregister(provid) != 0) {
    if (fasttrap_total > fasttrap_max / 2)
     (void) dtrace_condense(provid);
    later += fp->ftp_marked;
    fpp = &fp->ftp_next;
   } else {
    *fpp = fp->ftp_next;
    fasttrap_provider_free(fp);
   }
  }
  lck_mtx_unlock(&bucket->ftb_mtx);
 }

 return later;
}
