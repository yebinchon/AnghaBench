
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int ntsid_t ;


 int KI_VALID_NTSID ;
 int KI_VALID_UID ;
 int kauth_cred_cache_lookup (int ,int ,int *,int *) ;

int
kauth_cred_ntsid2uid(ntsid_t *sidp, uid_t *uidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_NTSID, KI_VALID_UID, sidp, uidp));
}
