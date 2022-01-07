
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ulong_t ;
typedef int fasttrap_bucket_t ;
struct TYPE_12__ {int fth_nent; int fth_mask; TYPE_3__* fth_table; } ;
struct TYPE_11__ {int fth_nent; int fth_mask; TYPE_2__* fth_table; } ;
struct TYPE_10__ {int fth_nent; int fth_mask; TYPE_1__* fth_table; } ;
struct TYPE_9__ {int ftb_mtx; } ;
struct TYPE_8__ {int ftb_mtx; } ;
struct TYPE_7__ {int ftb_mtx; } ;


 int ASSERT (int) ;
 int DDI_DEV_T_ANY ;
 int DDI_PROP_DONTPASS ;
 int FASTTRAP_PROCS_DEFAULT_SIZE ;
 int FASTTRAP_PROVIDERS_DEFAULT_SIZE ;
 int FASTTRAP_TPOINTS_DEFAULT_SIZE ;
 int KM_SLEEP ;
 int ddi_getprop (int ,int ,int ,char*,int) ;
 int devi ;
 int * dtrace_fasttrap_exec_ptr ;
 int * dtrace_fasttrap_exit_ptr ;
 int * dtrace_fasttrap_fork_ptr ;
 int dtrace_meta_register (char*,int *,int *,int *) ;
 int fasttrap_exec_exit ;
 int fasttrap_fork ;
 int fasttrap_highbit (int) ;
 int fasttrap_lck_attr ;
 int fasttrap_lck_grp ;
 int fasttrap_max ;
 int fasttrap_meta_id ;
 int fasttrap_mops ;
 TYPE_6__ fasttrap_procs ;
 TYPE_5__ fasttrap_provs ;
 scalar_t__ fasttrap_retired ;
 scalar_t__ fasttrap_total ;
 TYPE_4__ fasttrap_tpoints ;
 void* kmem_zalloc (int,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int sane_size ;

__attribute__((used)) static void
fasttrap_attach(void)
{
 ulong_t nent;
 unsigned int i;




 dtrace_fasttrap_fork_ptr = &fasttrap_fork;
 dtrace_fasttrap_exit_ptr = &fasttrap_exec_exit;
 dtrace_fasttrap_exec_ptr = &fasttrap_exec_exit;






 fasttrap_max = (sane_size >> 28) * 100000;

 if (fasttrap_max == 0)
  fasttrap_max = 50000;

 fasttrap_total = 0;
 fasttrap_retired = 0;
 nent = FASTTRAP_TPOINTS_DEFAULT_SIZE;


 if (nent <= 0 || nent > 0x1000000)
  nent = FASTTRAP_TPOINTS_DEFAULT_SIZE;

 if ((nent & (nent - 1)) == 0)
  fasttrap_tpoints.fth_nent = nent;
 else
  fasttrap_tpoints.fth_nent = 1 << fasttrap_highbit(nent);
 ASSERT(fasttrap_tpoints.fth_nent > 0);
 fasttrap_tpoints.fth_mask = fasttrap_tpoints.fth_nent - 1;
 fasttrap_tpoints.fth_table = kmem_zalloc(fasttrap_tpoints.fth_nent *
     sizeof (fasttrap_bucket_t), KM_SLEEP);
 ASSERT(fasttrap_tpoints.fth_table != ((void*)0));

 for (i = 0; i < fasttrap_tpoints.fth_nent; i++) {
  lck_mtx_init(&fasttrap_tpoints.fth_table[i].ftb_mtx, fasttrap_lck_grp, fasttrap_lck_attr);
 }




 nent = FASTTRAP_PROVIDERS_DEFAULT_SIZE;
 if ((nent & (nent - 1)) == 0)
  fasttrap_provs.fth_nent = nent;
 else
  fasttrap_provs.fth_nent = 1 << fasttrap_highbit(nent);
 ASSERT(fasttrap_provs.fth_nent > 0);
 fasttrap_provs.fth_mask = fasttrap_provs.fth_nent - 1;
 fasttrap_provs.fth_table = kmem_zalloc(fasttrap_provs.fth_nent *
     sizeof (fasttrap_bucket_t), KM_SLEEP);
 ASSERT(fasttrap_provs.fth_table != ((void*)0));

 for (i = 0; i < fasttrap_provs.fth_nent; i++) {
  lck_mtx_init(&fasttrap_provs.fth_table[i].ftb_mtx, fasttrap_lck_grp, fasttrap_lck_attr);
 }




 nent = FASTTRAP_PROCS_DEFAULT_SIZE;
 if ((nent & (nent - 1)) == 0)
  fasttrap_procs.fth_nent = nent;
 else
  fasttrap_procs.fth_nent = 1 << fasttrap_highbit(nent);
 ASSERT(fasttrap_procs.fth_nent > 0);
 fasttrap_procs.fth_mask = fasttrap_procs.fth_nent - 1;
 fasttrap_procs.fth_table = kmem_zalloc(fasttrap_procs.fth_nent *
     sizeof (fasttrap_bucket_t), KM_SLEEP);
 ASSERT(fasttrap_procs.fth_table != ((void*)0));


 for (i = 0; i < fasttrap_procs.fth_nent; i++) {
  lck_mtx_init(&fasttrap_procs.fth_table[i].ftb_mtx, fasttrap_lck_grp, fasttrap_lck_attr);
 }


 (void) dtrace_meta_register("fasttrap", &fasttrap_mops, ((void*)0),
     &fasttrap_meta_id);
}
