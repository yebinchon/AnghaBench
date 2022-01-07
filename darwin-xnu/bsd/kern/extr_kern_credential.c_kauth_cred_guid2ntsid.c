
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntsid_t ;
typedef int guid_t ;


 int KI_VALID_GUID ;
 int KI_VALID_NTSID ;
 int kauth_cred_cache_lookup (int ,int ,int *,int *) ;

int
kauth_cred_guid2ntsid(guid_t *guidp, ntsid_t *sidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_GUID, KI_VALID_NTSID, guidp, sidp));
}
