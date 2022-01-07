
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int) ;
 int mac_system_enforce ;
 int system_check_reboot ;

int
mac_system_check_reboot(kauth_cred_t cred, int howto)
{
 int error;







 MAC_CHECK(system_check_reboot, cred, howto);

 return (error);
}
