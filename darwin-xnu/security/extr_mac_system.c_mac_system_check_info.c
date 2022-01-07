
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,char const*) ;
 int mac_system_enforce ;
 int system_check_info ;

int
mac_system_check_info(kauth_cred_t cred, const char *info_type)
{
 int error;







 MAC_CHECK(system_check_info, cred, info_type);

 return (error);
}
