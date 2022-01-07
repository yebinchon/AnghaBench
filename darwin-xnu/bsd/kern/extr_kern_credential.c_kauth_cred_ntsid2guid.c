
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
kauth_cred_ntsid2guid(ntsid_t *sidp, guid_t *guidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_NTSID, KI_VALID_GUID, sidp, guidp));
}
