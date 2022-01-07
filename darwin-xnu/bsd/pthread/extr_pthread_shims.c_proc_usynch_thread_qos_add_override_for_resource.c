
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint64_t ;
typedef int thread_t ;
typedef int task_t ;
struct uthread {int uu_thread; } ;
typedef int boolean_t ;


 int THREAD_NULL ;
 scalar_t__ proc_thread_qos_add_override (int ,int ,int ,int,int,int ,int) ;

__attribute__((used)) static boolean_t
proc_usynch_thread_qos_add_override_for_resource(task_t task, struct uthread *uth,
  uint64_t tid, int override_qos, boolean_t first_override_for_resource,
  user_addr_t resource, int resource_type)
{
 thread_t thread = uth ? uth->uu_thread : THREAD_NULL;

 return proc_thread_qos_add_override(task, thread, tid, override_qos,
   first_override_for_resource, resource, resource_type) == 0;
}
