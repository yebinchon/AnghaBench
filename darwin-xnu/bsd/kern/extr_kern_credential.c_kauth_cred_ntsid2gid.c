
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntsid_t ;
typedef int gid_t ;


 int KI_VALID_GID ;
 int KI_VALID_NTSID ;
 int kauth_cred_cache_lookup (int ,int ,int *,int *) ;

int
kauth_cred_ntsid2gid(ntsid_t *sidp, gid_t *gidp)
{
 return(kauth_cred_cache_lookup(KI_VALID_NTSID, KI_VALID_GID, sidp, gidp));
}
