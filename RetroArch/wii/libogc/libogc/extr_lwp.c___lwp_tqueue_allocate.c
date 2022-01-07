
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ tqueue_st ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int _lwp_tqueue_objects ;

__attribute__((used)) static tqueue_st* __lwp_tqueue_allocate()
{
 tqueue_st *tqueue;

 __lwp_thread_dispatchdisable();
 tqueue = (tqueue_st*)__lwp_objmgr_allocate(&_lwp_tqueue_objects);
 if(tqueue) {
  __lwp_objmgr_open(&_lwp_tqueue_objects,&tqueue->object);
  return tqueue;
 }
 __lwp_thread_dispatchenable();
 return ((void*)0);
}
