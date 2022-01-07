
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_4__ {int kpc_buf; } ;


 int EINVAL ;
 int FALSE ;
 TYPE_1__* current_thread () ;
 int kpc_thread_classes_count ;
 int kpc_update_thread_counters (TYPE_1__*) ;
 int memcpy (int *,int ,int) ;
 int ml_set_interrupts_enabled (int ) ;

int
kpc_get_curthread_counters(uint32_t *inoutcount, uint64_t *buf)
{
 thread_t thread = current_thread();
 boolean_t enabled;


 if( *inoutcount < kpc_thread_classes_count )
  return EINVAL;


 if( !thread->kpc_buf )
  return EINVAL;

 enabled = ml_set_interrupts_enabled(FALSE);


 kpc_update_thread_counters( current_thread() );


 memcpy( buf, thread->kpc_buf,
         kpc_thread_classes_count * sizeof(*buf) );
 *inoutcount = kpc_thread_classes_count;

 ml_set_interrupts_enabled(enabled);

 return 0;
}
