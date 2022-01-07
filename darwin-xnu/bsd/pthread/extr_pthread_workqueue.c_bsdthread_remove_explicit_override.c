
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
typedef scalar_t__ thread_t ;
typedef TYPE_1__* proc_t ;
typedef int mach_port_name_t ;
struct TYPE_3__ {int task; } ;


 int ESRCH ;
 scalar_t__ THREAD_NULL ;
 int THREAD_QOS_OVERRIDE_TYPE_PTHREAD_EXPLICIT_OVERRIDE ;
 scalar_t__ port_name_to_thread (int ) ;
 int proc_thread_qos_remove_override (int ,scalar_t__,int ,int ,int ) ;
 int thread_deallocate (scalar_t__) ;

__attribute__((used)) static int
bsdthread_remove_explicit_override(proc_t p, mach_port_name_t kport,
  user_addr_t resource)
{
 thread_t th = port_name_to_thread(kport);
 if (th == THREAD_NULL) {
  return ESRCH;
 }

 int rv = proc_thread_qos_remove_override(p->task, th, 0, resource,
   THREAD_QOS_OVERRIDE_TYPE_PTHREAD_EXPLICIT_OVERRIDE);

 thread_deallocate(th);
 return rv;
}
