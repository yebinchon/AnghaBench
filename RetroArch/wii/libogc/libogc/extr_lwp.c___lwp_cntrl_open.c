
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwp_t ;
typedef int lwp_cntrl ;


 int LWP_CHECK_THREAD (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int _lwp_thr_objects ;

__attribute__((used)) static __inline__ lwp_cntrl* __lwp_cntrl_open(lwp_t thr_id)
{
 LWP_CHECK_THREAD(thr_id);
 return (lwp_cntrl*)__lwp_objmgr_get(&_lwp_thr_objects,LWP_OBJMASKID(thr_id));
}
