
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int tqueue_st ;
struct TYPE_8__ {int object; } ;
typedef TYPE_1__ lwp_cntrl ;


 int LWP_MAX_THREADS ;
 int LWP_MAX_TQUEUES ;
 int TRUE ;
 scalar_t__ __crtmain ;
 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_initinfo (int *,int ,int) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_init (TYPE_1__*,int *,scalar_t__,int,int ,int ) ;
 int __lwp_thread_start (TYPE_1__*,void*,int *) ;
 scalar_t__ __stack_addr ;
 int * __stack_end ;
 int _lwp_thr_objects ;
 int _lwp_tqueue_objects ;
 TYPE_1__* _thr_executing ;
 TYPE_1__* _thr_heir ;
 TYPE_1__* _thr_idle ;
 TYPE_1__* _thr_main ;
 void* idle_func ;

void __lwp_sysinit()
{
 __lwp_objmgr_initinfo(&_lwp_thr_objects,LWP_MAX_THREADS,sizeof(lwp_cntrl));
 __lwp_objmgr_initinfo(&_lwp_tqueue_objects,LWP_MAX_TQUEUES,sizeof(tqueue_st));


 _thr_idle = (lwp_cntrl*)__lwp_objmgr_allocate(&_lwp_thr_objects);
 __lwp_thread_init(_thr_idle,((void*)0),0,255,0,TRUE);
 _thr_executing = _thr_heir = _thr_idle;
 __lwp_thread_start(_thr_idle,idle_func,((void*)0));
 __lwp_objmgr_open(&_lwp_thr_objects,&_thr_idle->object);



 _thr_main = (lwp_cntrl*)__lwp_objmgr_allocate(&_lwp_thr_objects);
 __lwp_thread_init(_thr_main,__stack_end,((u32)__stack_addr-(u32)__stack_end),191,0,TRUE);
 __lwp_thread_start(_thr_main,(void*)__crtmain,((void*)0));
 __lwp_objmgr_open(&_lwp_thr_objects,&_thr_main->object);
}
