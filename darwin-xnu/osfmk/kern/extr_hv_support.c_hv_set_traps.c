
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kern_return_t ;
typedef size_t hv_trap_type_t ;
struct TYPE_3__ {scalar_t__ trap_count; int const* traps; } ;
typedef TYPE_1__ hv_trap_table_t ;
typedef int hv_trap_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int OSMemoryBarrier () ;
 int hv_support_lck_mtx ;
 TYPE_1__* hv_trap_table ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

kern_return_t
hv_set_traps(hv_trap_type_t trap_type, const hv_trap_t *traps,
 unsigned trap_count)
{
 hv_trap_table_t *trap_table = &hv_trap_table[trap_type];
 kern_return_t kr = KERN_FAILURE;

 lck_mtx_lock(hv_support_lck_mtx);
 if (trap_table->trap_count == 0) {
  trap_table->traps = traps;
  OSMemoryBarrier();
  trap_table->trap_count = trap_count;
  kr = KERN_SUCCESS;
 }
 lck_mtx_unlock(hv_support_lck_mtx);

 return kr;
}
