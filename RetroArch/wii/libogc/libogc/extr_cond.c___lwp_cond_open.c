
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cond_t ;
typedef int cond_st ;


 int LWP_CHECK_COND (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int _lwp_cond_objects ;

__attribute__((used)) static __inline__ cond_st* __lwp_cond_open(cond_t cond)
{
 LWP_CHECK_COND(cond);
 return (cond_st*)__lwp_objmgr_get(&_lwp_cond_objects,LWP_OBJMASKID(cond));
}
