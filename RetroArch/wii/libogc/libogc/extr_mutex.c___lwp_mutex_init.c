
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mutex_st ;


 int LWP_MAX_MUTEXES ;
 int __lwp_objmgr_initinfo (int *,int ,int) ;
 int _lwp_mutex_objects ;

void __lwp_mutex_init()
{
 __lwp_objmgr_initinfo(&_lwp_mutex_objects,LWP_MAX_MUTEXES,sizeof(mutex_st));
}
