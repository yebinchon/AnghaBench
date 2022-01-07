
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ mp_call_queue_t ;
typedef int boolean_t ;


 int FALSE ;
 int ml_set_interrupts_enabled (int ) ;
 int simple_lock (int *) ;

__attribute__((used)) static inline boolean_t
mp_call_head_lock(mp_call_queue_t *cqp)
{
 boolean_t intrs_enabled;

 intrs_enabled = ml_set_interrupts_enabled(FALSE);
 simple_lock(&cqp->lock);

 return intrs_enabled;
}
