
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int queue; } ;
struct TYPE_6__ {TYPE_1__ wait; int cur_state; } ;
typedef TYPE_2__ lwp_cntrl ;


 int FALSE ;
 int TRUE ;
 scalar_t__ __lwp_statewaitthreadqueue (int ) ;
 int __lwp_threadqueue_extract (int ,TYPE_2__*) ;

u32 __lwp_threadqueue_extractproxy(lwp_cntrl *thethread)
{
 u32 state;

 state = thethread->cur_state;
 if(__lwp_statewaitthreadqueue(state)) {
  __lwp_threadqueue_extract(thethread->wait.queue,thethread);
  return TRUE;
 }
 return FALSE;
}
