
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ) ;
 int mac_system_enforce ;
 int system_check_nfsd ;

int
mac_system_check_nfsd(kauth_cred_t cred)
{
 int error;







 MAC_CHECK(system_check_nfsd, cred);

 return (error);
}
