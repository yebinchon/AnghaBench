
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t hv_trap_type_t ;
struct TYPE_3__ {int * traps; scalar_t__ trap_count; } ;
typedef TYPE_1__ hv_trap_table_t ;


 int OSMemoryBarrier () ;
 int hv_support_lck_mtx ;
 TYPE_1__* hv_trap_table ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

void
hv_release_traps(hv_trap_type_t trap_type) {
 hv_trap_table_t *trap_table = &hv_trap_table[trap_type];

 lck_mtx_lock(hv_support_lck_mtx);
 trap_table->trap_count = 0;
 OSMemoryBarrier();
 trap_table->traps = ((void*)0);
 lck_mtx_unlock(hv_support_lck_mtx);
}
