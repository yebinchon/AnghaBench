
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,int) ;
 int mac_cred_check_enforce (int ) ;
 int priv_check ;

int
mac_priv_check(kauth_cred_t cred, int priv)
{
 int error;

 if (!mac_cred_check_enforce(cred))
  return 0;

 MAC_CHECK(priv_check, cred, priv);

 return (error);
}
