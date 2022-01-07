
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntsid_t ;
typedef int kauth_cred_t ;


 int NULLCRED_CHECK (int ) ;
 int kauth_cred_getuid (int ) ;
 int kauth_cred_uid2ntsid (int ,int *) ;

int
kauth_cred_getntsid(kauth_cred_t cred, ntsid_t *sidp)
{
 NULLCRED_CHECK(cred);
 return(kauth_cred_uid2ntsid(kauth_cred_getuid(cred), sidp));
}
