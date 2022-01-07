
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;


 int mac_policy_register (int *,int *,int *) ;
 int policy_conf ;
 int policy_flags ;
 int policy_handle ;

errno_t
check_policy_init(int flags)
{

 if (!flags)
  return 0;

 policy_flags = flags;

 return mac_policy_register(&policy_conf, &policy_handle, ((void*)0));
}
