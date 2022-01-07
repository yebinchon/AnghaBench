
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ lwp_t ;
struct TYPE_2__ {int* stack; int cur_state; } ;
typedef TYPE_1__ lwp_cntrl ;
typedef int BOOL ;


 int FALSE ;
 int LWP_OBJMASKID (scalar_t__) ;
 scalar_t__ LWP_OBJTYPE (scalar_t__) ;
 scalar_t__ LWP_OBJTYPE_THREAD ;
 scalar_t__ LWP_THREAD_NULL ;
 int TRUE ;
 scalar_t__ __lwp_objmgr_getnoprotection (int *,int ) ;
 int __lwp_statedormant (int ) ;
 int __lwp_statetransient (int ) ;
 int _lwp_thr_objects ;

BOOL __lwp_thread_isalive(lwp_t thr_id)
{
 if(thr_id==LWP_THREAD_NULL || LWP_OBJTYPE(thr_id)!=LWP_OBJTYPE_THREAD) return FALSE;

 lwp_cntrl *thethread = (lwp_cntrl*)__lwp_objmgr_getnoprotection(&_lwp_thr_objects,LWP_OBJMASKID(thr_id));

 if(thethread) {
  u32 *stackbase = thethread->stack;
  if(stackbase[0]==0xDEADBABE && !__lwp_statedormant(thethread->cur_state) && !__lwp_statetransient(thethread->cur_state))
   return TRUE;
 }

 return FALSE;
}
