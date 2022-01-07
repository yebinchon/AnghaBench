
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lwp_t ;
struct TYPE_2__ {int context; } ;
typedef TYPE_1__ lwp_cntrl ;
typedef int frame_context ;


 int LWP_CHECK_THREAD (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_getnoprotection (int *,int ) ;
 int _lwp_thr_objects ;

frame_context* __lwp_thread_context(lwp_t thr_id)
{
 lwp_cntrl *thethread;
 frame_context *pctx = ((void*)0);

 LWP_CHECK_THREAD(thr_id);
 thethread = (lwp_cntrl*)__lwp_objmgr_getnoprotection(&_lwp_thr_objects,LWP_OBJMASKID(thr_id));
 if(thethread) pctx = &thethread->context;

 return pctx;
}
