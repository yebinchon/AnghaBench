
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ntsid_t ;


 int KAUTH_NTSID_SIZE (int *) ;
 scalar_t__ bcmp (int *,int *,int) ;

int
kauth_ntsid_equal(ntsid_t *sid1, ntsid_t *sid2)
{

 if ((KAUTH_NTSID_SIZE(sid1) == KAUTH_NTSID_SIZE(sid2)) &&
     (KAUTH_NTSID_SIZE(sid1) <= sizeof(*sid1)) &&
     bcmp(sid1, sid2, KAUTH_NTSID_SIZE(sid1)) == 0)
  return(1);
 return(0);
}
