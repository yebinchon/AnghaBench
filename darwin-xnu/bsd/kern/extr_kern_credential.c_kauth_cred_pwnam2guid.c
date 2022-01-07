
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;


 int KI_VALID_GUID ;
 int KI_VALID_PWNAM ;
 int kauth_cred_cache_lookup (int ,int ,char*,int *) ;

int
kauth_cred_pwnam2guid(char *pwnam, guid_t *guidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_PWNAM, KI_VALID_GUID, pwnam, guidp));
}
