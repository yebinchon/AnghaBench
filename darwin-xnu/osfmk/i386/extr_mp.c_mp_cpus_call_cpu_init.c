
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_call_t ;
struct TYPE_3__ {int queue; int lock; } ;
typedef TYPE_1__ mp_call_queue_t ;


 int DBG (char*,int) ;
 int MP_CPUS_CALL_BUFS_PER_CPU ;
 scalar_t__ kalloc (int) ;
 int mp_call_free (int *) ;
 TYPE_1__* mp_cpus_call_head ;
 int queue_init (int *) ;
 int simple_lock_init (int *,int ) ;

void
mp_cpus_call_cpu_init(int cpu)
{
 int i;
 mp_call_queue_t *cqp = &mp_cpus_call_head[cpu];
 mp_call_t *callp;

 simple_lock_init(&cqp->lock, 0);
 queue_init(&cqp->queue);
 for (i = 0; i < MP_CPUS_CALL_BUFS_PER_CPU; i++) {
  callp = (mp_call_t *) kalloc(sizeof(mp_call_t));
  mp_call_free(callp);
 }

 DBG("mp_cpus_call_init(%d) done\n", cpu);
}
