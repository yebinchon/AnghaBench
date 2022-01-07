
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int lck_rw_data; } ;
typedef TYPE_1__ lck_rw_t ;


 int LCK_RW_INTERLOCK ;
 int clear_exclusive () ;
 int load_exclusive32 (int *,int ) ;
 int memory_order_relaxed ;
 int panic (char*,TYPE_1__*,int ) ;
 int wait_for_event () ;

__attribute__((used)) static inline void
lck_rw_interlock_spin(lck_rw_t *lock)
{
 panic("lck_rw_interlock_spin(): Interlock locked %p %x", lock, lock->lck_rw_data);

}
