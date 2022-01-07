
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ mqbox_st ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int _lwp_mqbox_objects ;

__attribute__((used)) static mqbox_st* __lwp_mqbox_allocate()
{
 mqbox_st *mqbox;

 __lwp_thread_dispatchdisable();
 mqbox = (mqbox_st*)__lwp_objmgr_allocate(&_lwp_mqbox_objects);
 if(mqbox) {
  __lwp_objmgr_open(&_lwp_mqbox_objects,&mqbox->object);
  return mqbox;
 }
 __lwp_thread_dispatchenable();
 return ((void*)0);
}
