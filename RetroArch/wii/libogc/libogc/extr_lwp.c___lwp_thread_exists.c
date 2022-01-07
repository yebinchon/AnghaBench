
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lwp_t ;
typedef int BOOL ;


 int FALSE ;
 int LWP_OBJMASKID (scalar_t__) ;
 scalar_t__ LWP_OBJTYPE (scalar_t__) ;
 scalar_t__ LWP_OBJTYPE_THREAD ;
 scalar_t__ LWP_THREAD_NULL ;
 int * __lwp_objmgr_getnoprotection (int *,int ) ;
 int _lwp_thr_objects ;

BOOL __lwp_thread_exists(lwp_t thr_id)
{
 if(thr_id==LWP_THREAD_NULL || LWP_OBJTYPE(thr_id)!=LWP_OBJTYPE_THREAD) return FALSE;
 return (__lwp_objmgr_getnoprotection(&_lwp_thr_objects,LWP_OBJMASKID(thr_id))!=((void*)0));
}
