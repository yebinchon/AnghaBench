
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;




 int NFS_ACE_ACCESS_ALLOWED_ACE_TYPE ;
 int NFS_ACE_ACCESS_DENIED_ACE_TYPE ;
 int NFS_ACE_SYSTEM_ALARM_ACE_TYPE ;
 int NFS_ACE_SYSTEM_AUDIT_ACE_TYPE ;

uint32_t
nfs4_ace_vfstype_to_nfstype(uint32_t vfstype, int *errorp)
{
 switch (vfstype) {
 case 128:
  return NFS_ACE_ACCESS_ALLOWED_ACE_TYPE;
 case 129:
  return NFS_ACE_ACCESS_DENIED_ACE_TYPE;
 case 130:
  return NFS_ACE_SYSTEM_AUDIT_ACE_TYPE;
 case 131:
  return NFS_ACE_SYSTEM_ALARM_ACE_TYPE;
 }
 *errorp = EINVAL;
 return 0;
}
