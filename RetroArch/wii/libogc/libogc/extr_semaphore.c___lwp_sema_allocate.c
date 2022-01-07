
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ sema_st ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int _lwp_sema_objects ;

__attribute__((used)) static sema_st* __lwp_sema_allocate()
{
 sema_st *sema;

 __lwp_thread_dispatchdisable();
 sema = (sema_st*)__lwp_objmgr_allocate(&_lwp_sema_objects);
 if(sema) {
  __lwp_objmgr_open(&_lwp_sema_objects,&sema->object);
  return sema;
 }
 __lwp_thread_dispatchenable();
 return ((void*)0);
}
