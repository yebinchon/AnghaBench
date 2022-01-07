
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ mutex_st ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int _lwp_mutex_objects ;

__attribute__((used)) static mutex_st* __lwp_mutex_allocate()
{
 mutex_st *lock;

 __lwp_thread_dispatchdisable();
 lock = (mutex_st*)__lwp_objmgr_allocate(&_lwp_mutex_objects);
 if(lock) {
  __lwp_objmgr_open(&_lwp_mutex_objects,&lock->object);
  return lock;
 }
 __lwp_thread_dispatchunnest();
 return ((void*)0);
}
