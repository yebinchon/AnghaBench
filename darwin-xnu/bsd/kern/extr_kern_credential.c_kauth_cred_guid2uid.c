
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int guid_t ;


 int KI_VALID_GUID ;
 int KI_VALID_UID ;
 int kauth_cred_cache_lookup (int ,int ,int *,int *) ;

int
kauth_cred_guid2uid(guid_t *guidp, uid_t *uidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_GUID, KI_VALID_UID, guidp, uidp));
}
