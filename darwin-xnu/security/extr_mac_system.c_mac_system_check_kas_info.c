
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int) ;
 int mac_system_enforce ;
 int system_check_kas_info ;

int
mac_system_check_kas_info(kauth_cred_t cred, int selector)
{
 int error;







 MAC_CHECK(system_check_kas_info, cred, selector);

 return (error);
}
