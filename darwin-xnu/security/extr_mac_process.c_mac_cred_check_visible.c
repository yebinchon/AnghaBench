
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int ) ;
 int cred_check_visible ;
 int mac_proc_enforce ;

int
mac_cred_check_visible(kauth_cred_t u1, kauth_cred_t u2)
{
 int error;







 MAC_CHECK(cred_check_visible, u1, u2);

 return (error);
}
