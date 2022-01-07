
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lck_rw_interlock; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;


 int hw_lock_byte_unlock (int *) ;
 int ml_set_interrupts_enabled (int ) ;

__attribute__((used)) static inline void
lck_interlock_unlock(lck_rw_t *lck, boolean_t istate)
{
 hw_lock_byte_unlock(&lck->lck_rw_interlock);
 ml_set_interrupts_enabled(istate);
}
