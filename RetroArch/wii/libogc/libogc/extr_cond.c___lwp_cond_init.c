
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cond_st ;


 int LWP_MAX_CONDVARS ;
 int __lwp_objmgr_initinfo (int *,int ,int) ;
 int _lwp_cond_objects ;

void __lwp_cond_init()
{
 __lwp_objmgr_initinfo(&_lwp_cond_objects,LWP_MAX_CONDVARS,sizeof(cond_st));
}
