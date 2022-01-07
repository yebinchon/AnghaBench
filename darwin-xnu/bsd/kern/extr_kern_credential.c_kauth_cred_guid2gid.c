
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;
typedef int gid_t ;


 int KI_VALID_GID ;
 int KI_VALID_GUID ;
 int kauth_cred_cache_lookup (int ,int ,int *,int *) ;

int
kauth_cred_guid2gid(guid_t *guidp, gid_t *gidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_GUID, KI_VALID_GID, guidp, gidp));
}
