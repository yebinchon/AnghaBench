
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sema_st ;


 int LWP_MAX_SEMAS ;
 int __lwp_objmgr_initinfo (int *,int ,int) ;
 int _lwp_sema_objects ;

void __lwp_sema_init()
{
 __lwp_objmgr_initinfo(&_lwp_sema_objects,LWP_MAX_SEMAS,sizeof(sema_st));
}
