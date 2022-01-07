
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;
typedef int guid_t ;


 int NULLCRED_CHECK (int ) ;
 int kauth_cred_getuid (int ) ;
 int kauth_cred_uid2guid (int ,int *) ;

int
kauth_cred_getguid(kauth_cred_t cred, guid_t *guidp)
{
 NULLCRED_CHECK(cred);
 return(kauth_cred_uid2guid(kauth_cred_getuid(cred), guidp));
}
