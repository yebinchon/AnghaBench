
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ cond_st ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int _lwp_cond_objects ;

__attribute__((used)) static cond_st* __lwp_cond_allocate()
{
 cond_st *cond;

 __lwp_thread_dispatchdisable();
 cond = (cond_st*)__lwp_objmgr_allocate(&_lwp_cond_objects);
 if(cond) {
  __lwp_objmgr_open(&_lwp_cond_objects,&cond->object);
  return cond;
 }
 __lwp_thread_dispatchenable();
 return ((void*)0);
}
