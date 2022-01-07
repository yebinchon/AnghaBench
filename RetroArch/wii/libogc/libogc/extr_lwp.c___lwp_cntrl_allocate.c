
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ lwp_cntrl ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int _lwp_thr_objects ;

__attribute__((used)) static lwp_cntrl* __lwp_cntrl_allocate()
{
 lwp_cntrl *thethread;

 __lwp_thread_dispatchdisable();
 thethread = (lwp_cntrl*)__lwp_objmgr_allocate(&_lwp_thr_objects);
 if(thethread) {
  __lwp_objmgr_open(&_lwp_thr_objects,&thethread->object);
  return thethread;
 }
 __lwp_thread_dispatchenable();
 return ((void*)0);
}
