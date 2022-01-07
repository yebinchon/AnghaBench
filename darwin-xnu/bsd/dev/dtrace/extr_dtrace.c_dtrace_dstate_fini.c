
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtds_percpu; int dtds_size; int * dtds_base; } ;
typedef TYPE_1__ dtrace_dstate_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int cpu_lock ;
 int dtrace_state_cache ;
 int kmem_cache_free (int ,int ) ;
 int kmem_free (int *,int ) ;

__attribute__((used)) static void
dtrace_dstate_fini(dtrace_dstate_t *dstate)
{
 LCK_MTX_ASSERT(&cpu_lock, LCK_MTX_ASSERT_OWNED);

 if (dstate->dtds_base == ((void*)0))
  return;

 kmem_free(dstate->dtds_base, dstate->dtds_size);
 kmem_cache_free(dtrace_state_cache, dstate->dtds_percpu);
}
