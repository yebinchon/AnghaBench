
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mqbox_st ;


 int LWP_MAX_MQUEUES ;
 int __lwp_objmgr_initinfo (int *,int ,int) ;
 int _lwp_mqbox_objects ;

void __lwp_mqbox_init()
{
 __lwp_objmgr_initinfo(&_lwp_mqbox_objects,LWP_MAX_MQUEUES,sizeof(mqbox_st));
}
