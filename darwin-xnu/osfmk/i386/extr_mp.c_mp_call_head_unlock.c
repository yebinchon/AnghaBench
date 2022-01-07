
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ mp_call_queue_t ;
typedef int boolean_t ;


 int ml_set_interrupts_enabled (int ) ;
 int simple_unlock (int *) ;

__attribute__((used)) static inline void
mp_call_head_unlock(mp_call_queue_t *cqp, boolean_t intrs_enabled)
{
 simple_unlock(&cqp->lock);
 ml_set_interrupts_enabled(intrs_enabled);
}
