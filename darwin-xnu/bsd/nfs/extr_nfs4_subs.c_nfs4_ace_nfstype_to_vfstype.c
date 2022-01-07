
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EBADRPC ;
 int KAUTH_ACE_ALARM ;
 int KAUTH_ACE_AUDIT ;
 int KAUTH_ACE_DENY ;
 int KAUTH_ACE_PERMIT ;





uint32_t
nfs4_ace_nfstype_to_vfstype(uint32_t nfsacetype, int *errorp)
{
 switch (nfsacetype) {
 case 131:
  return KAUTH_ACE_PERMIT;
 case 130:
  return KAUTH_ACE_DENY;
 case 128:
  return KAUTH_ACE_AUDIT;
 case 129:
  return KAUTH_ACE_ALARM;
 }
 *errorp = EBADRPC;
 return 0;
}
