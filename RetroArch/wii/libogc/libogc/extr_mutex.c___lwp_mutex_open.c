
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mutex_t ;
typedef int mutex_st ;


 int LWP_CHECK_MUTEX (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int _lwp_mutex_objects ;

__attribute__((used)) static __inline__ mutex_st* __lwp_mutex_open(mutex_t lock)
{
 LWP_CHECK_MUTEX(lock);
 return (mutex_st*)__lwp_objmgr_get(&_lwp_mutex_objects,LWP_OBJMASKID(lock));
}
