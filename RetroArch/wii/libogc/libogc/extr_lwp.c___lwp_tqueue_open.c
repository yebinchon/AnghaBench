
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tqueue_st ;
typedef int lwpq_t ;


 int LWP_CHECK_TQUEUE (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int _lwp_tqueue_objects ;

__attribute__((used)) static __inline__ tqueue_st* __lwp_tqueue_open(lwpq_t tqueue)
{
 LWP_CHECK_TQUEUE(tqueue);
 return (tqueue_st*)__lwp_objmgr_get(&_lwp_tqueue_objects,LWP_OBJMASKID(tqueue));
}
