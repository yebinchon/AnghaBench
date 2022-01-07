
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int s32 ;
typedef scalar_t__ lwp_t ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_1__ object; } ;
typedef TYPE_2__ lwp_cntrl ;


 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_THREAD ;
 int TRUE ;
 TYPE_2__* __lwp_cntrl_allocate () ;
 int __lwp_cntrl_free (TYPE_2__*) ;
 int __lwp_priotocore (int ) ;
 int __lwp_thread_dispatchenable () ;
 scalar_t__ __lwp_thread_init (TYPE_2__*,void*,scalar_t__,int ,int ,int ) ;
 scalar_t__ __lwp_thread_start (TYPE_2__*,void* (*) (void*),void*) ;

s32 LWP_CreateThread(lwp_t *thethread,void* (*entry)(void *),void *arg,void *stackbase,u32 stack_size,u8 prio)
{
 u32 status;
 lwp_cntrl *lwp_thread;

 if(!thethread || !entry) return -1;

 lwp_thread = __lwp_cntrl_allocate();
 if(!lwp_thread) return -1;

 status = __lwp_thread_init(lwp_thread,stackbase,stack_size,__lwp_priotocore(prio),0,TRUE);
 if(!status) {
  __lwp_cntrl_free(lwp_thread);
  __lwp_thread_dispatchenable();
  return -1;
 }

 status = __lwp_thread_start(lwp_thread,entry,arg);
 if(!status) {
  __lwp_cntrl_free(lwp_thread);
  __lwp_thread_dispatchenable();
  return -1;
 }

 *thethread = (lwp_t)(LWP_OBJMASKTYPE(LWP_OBJTYPE_THREAD)|LWP_OBJMASKID(lwp_thread->object.id));
 __lwp_thread_dispatchenable();

 return 0;
}
