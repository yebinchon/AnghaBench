
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;


 int KI_VALID_GRNAM ;
 int KI_VALID_GUID ;
 int kauth_cred_cache_lookup (int ,int ,char*,int *) ;

int
kauth_cred_grnam2guid(char *grnam, guid_t *guidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_GRNAM, KI_VALID_GUID, grnam, guidp));
}
