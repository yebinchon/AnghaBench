
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;


 int KI_VALID_GUID ;
 int KI_VALID_PWNAM ;
 int kauth_cred_cache_lookup (int ,int ,int *,char*) ;

int
kauth_cred_guid2pwnam(guid_t *guidp, char *pwnam)
{
 return(kauth_cred_cache_lookup(KI_VALID_GUID, KI_VALID_PWNAM, guidp, pwnam));
}
