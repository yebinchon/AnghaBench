
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sema_st ;
typedef int sem_t ;


 int LWP_CHECK_SEM (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int _lwp_sema_objects ;

__attribute__((used)) static __inline__ sema_st* __lwp_sema_open(sem_t sem)
{
 LWP_CHECK_SEM(sem);
 return (sema_st*)__lwp_objmgr_get(&_lwp_sema_objects,LWP_OBJMASKID(sem));
}
