
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
typedef scalar_t__ task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {scalar_t__ task; } ;


 int DBG_FUNC_NONE ;
 int ESRCH ;
 scalar_t__ FALSE ;
 int IMPORTANCE_CODE (int ,int ) ;
 int IMP_USYNCH_ADD_OVERRIDE ;
 int IMP_USYNCH_QOS_OVERRIDE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int,int ,int ) ;
 TYPE_1__* THREAD_NULL ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int proc_thread_qos_add_override_internal (TYPE_1__*,int,scalar_t__,int ,int) ;
 TYPE_1__* task_findtid (scalar_t__,int ) ;
 int thread_deallocate (TYPE_1__*) ;

int
proc_thread_qos_add_override(task_t task,
                             thread_t thread,
                             uint64_t tid,
                             int override_qos,
                             boolean_t first_override_for_resource,
                             user_addr_t resource,
                             int resource_type)
{
 boolean_t has_thread_reference = FALSE;
 int rc = 0;

 if (thread == THREAD_NULL) {
  thread = task_findtid(task, tid);


  if (thread == THREAD_NULL) {
   KERNEL_DEBUG_CONSTANT((IMPORTANCE_CODE(IMP_USYNCH_QOS_OVERRIDE, IMP_USYNCH_ADD_OVERRIDE)) | DBG_FUNC_NONE,
          tid, 0, 0xdead, 0, 0);
   return ESRCH;
  }
  has_thread_reference = TRUE;
 } else {
  assert(thread->task == task);
 }
 rc = proc_thread_qos_add_override_internal(thread, override_qos,
   first_override_for_resource, resource, resource_type);
 if (has_thread_reference) {
  thread_deallocate(thread);
 }

 return rc;
}
