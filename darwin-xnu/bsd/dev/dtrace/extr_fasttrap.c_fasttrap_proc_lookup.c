
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_7__ {scalar_t__ ftpc_pid; scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; struct TYPE_7__* ftpc_next; int ftpc_mtx; } ;
typedef TYPE_1__ fasttrap_proc_t ;
struct TYPE_8__ {int ftb_mtx; TYPE_1__* ftb_data; } ;
typedef TYPE_2__ fasttrap_bucket_t ;
struct TYPE_9__ {TYPE_2__* fth_table; } ;


 int ASSERT (int) ;
 size_t FASTTRAP_PROCS_INDEX (scalar_t__) ;
 int KM_SLEEP ;
 int atomic_add_64 (scalar_t__*,int) ;
 int fasttrap_lck_attr ;
 int fasttrap_lck_grp ;
 TYPE_5__ fasttrap_procs ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static fasttrap_proc_t *
fasttrap_proc_lookup(pid_t pid)
{
 fasttrap_bucket_t *bucket;
 fasttrap_proc_t *fprc, *new_fprc;

 bucket = &fasttrap_procs.fth_table[FASTTRAP_PROCS_INDEX(pid)];
 lck_mtx_lock(&bucket->ftb_mtx);

 for (fprc = bucket->ftb_data; fprc != ((void*)0); fprc = fprc->ftpc_next) {
  if (fprc->ftpc_pid == pid && fprc->ftpc_acount != 0) {
   lck_mtx_lock(&fprc->ftpc_mtx);
   lck_mtx_unlock(&bucket->ftb_mtx);
   fprc->ftpc_rcount++;
   atomic_add_64(&fprc->ftpc_acount, 1);
   ASSERT(fprc->ftpc_acount <= fprc->ftpc_rcount);
   lck_mtx_unlock(&fprc->ftpc_mtx);

   return (fprc);
  }
 }





 lck_mtx_unlock(&bucket->ftb_mtx);

 new_fprc = kmem_zalloc(sizeof (fasttrap_proc_t), KM_SLEEP);
 ASSERT(new_fprc != ((void*)0));
 new_fprc->ftpc_pid = pid;
 new_fprc->ftpc_rcount = 1;
 new_fprc->ftpc_acount = 1;

 lck_mtx_lock(&bucket->ftb_mtx);





 for (fprc = bucket->ftb_data; fprc != ((void*)0); fprc = fprc->ftpc_next) {
  if (fprc->ftpc_pid == pid && fprc->ftpc_acount != 0) {
   lck_mtx_lock(&fprc->ftpc_mtx);
   lck_mtx_unlock(&bucket->ftb_mtx);
   fprc->ftpc_rcount++;
   atomic_add_64(&fprc->ftpc_acount, 1);
   ASSERT(fprc->ftpc_acount <= fprc->ftpc_rcount);
   lck_mtx_unlock(&fprc->ftpc_mtx);

   kmem_free(new_fprc, sizeof (fasttrap_proc_t));

   return (fprc);
  }
 }




 lck_mtx_init(&new_fprc->ftpc_mtx, fasttrap_lck_grp, fasttrap_lck_attr);

 new_fprc->ftpc_next = bucket->ftb_data;
 bucket->ftb_data = new_fprc;

 lck_mtx_unlock(&bucket->ftb_mtx);

 return (new_fprc);
}
