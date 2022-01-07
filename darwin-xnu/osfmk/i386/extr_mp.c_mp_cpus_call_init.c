
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; int lock; } ;
typedef TYPE_1__ mp_call_queue_t ;


 int DBG (char*) ;
 TYPE_1__ mp_cpus_call_freelist ;
 int queue_init (int *) ;
 int simple_lock_init (int *,int ) ;

__attribute__((used)) static void
mp_cpus_call_init(void)
{
 mp_call_queue_t *cqp = &mp_cpus_call_freelist;

 DBG("mp_cpus_call_init()\n");
 simple_lock_init(&cqp->lock, 0);
 queue_init(&cqp->queue);
}
