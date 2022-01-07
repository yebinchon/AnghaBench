
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ thread_qos_t ;
typedef int mach_msg_priority_t ;
struct TYPE_4__ {int base_pri; } ;


 int _pthread_priority_make_from_thread_qos (scalar_t__,int,int ) ;
 TYPE_1__* current_thread () ;
 scalar_t__ thread_get_requested_qos (TYPE_1__*,int*) ;
 scalar_t__ thread_user_promotion_qos_for_pri (int ) ;

__attribute__((used)) static mach_msg_priority_t
ipc_get_current_thread_priority(void)
{
 thread_t thread = current_thread();
 thread_qos_t qos;
 int relpri;

 qos = thread_get_requested_qos(thread, &relpri);
 if (!qos) {
  qos = thread_user_promotion_qos_for_pri(thread->base_pri);
  relpri = 0;
 }
 return (mach_msg_priority_t)_pthread_priority_make_from_thread_qos(qos, relpri, 0);
}
