
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mqbox_t ;
typedef int mqbox_st ;


 int LWP_CHECK_MBOX (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int _lwp_mqbox_objects ;

__attribute__((used)) static __inline__ mqbox_st* __lwp_mqbox_open(mqbox_t mbox)
{
 LWP_CHECK_MBOX(mbox);
 return (mqbox_st*)__lwp_objmgr_get(&_lwp_mqbox_objects,LWP_OBJMASKID(mbox));
}
