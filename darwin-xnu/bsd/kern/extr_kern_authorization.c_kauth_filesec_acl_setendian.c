
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_2__* kauth_filesec_t ;
typedef TYPE_3__* kauth_acl_t ;
struct TYPE_8__ {scalar_t__ acl_entrycount; scalar_t__ acl_flags; TYPE_1__* acl_ace; } ;
struct TYPE_7__ {scalar_t__ fsec_magic; TYPE_3__ fsec_acl; } ;
struct TYPE_6__ {scalar_t__ ace_flags; scalar_t__ ace_rights; } ;




 scalar_t__ KAUTH_FILESEC_MAGIC ;
 scalar_t__ KAUTH_FILESEC_NOACL ;
 void* ntohl (scalar_t__) ;

void
kauth_filesec_acl_setendian(int kendian, kauth_filesec_t fsec, kauth_acl_t acl)
{
  uint32_t compare_magic = KAUTH_FILESEC_MAGIC;
 uint32_t invert_magic = ntohl(KAUTH_FILESEC_MAGIC);
 uint32_t compare_acl_entrycount;
 uint32_t i;

 if (compare_magic == invert_magic)
  return;


 if (acl == ((void*)0))
  acl = &fsec->fsec_acl;

 compare_acl_entrycount = acl->acl_entrycount;






  switch(kendian) {
 case 128:
  if (fsec->fsec_magic != invert_magic)
   return;

  compare_acl_entrycount = ntohl(acl->acl_entrycount);
  break;
 case 129:
  if (fsec->fsec_magic != compare_magic)
   return;
  break;
 default:
  return;
 }


 fsec->fsec_magic = ntohl(fsec->fsec_magic);
 acl->acl_entrycount = ntohl(acl->acl_entrycount);
 if (compare_acl_entrycount != KAUTH_FILESEC_NOACL) {
  acl->acl_flags = ntohl(acl->acl_flags);


  for (i = 0; i < compare_acl_entrycount; i++) {
   acl->acl_ace[i].ace_flags = ntohl(acl->acl_ace[i].ace_flags);
   acl->acl_ace[i].ace_rights = ntohl(acl->acl_ace[i].ace_rights);
  }
 }
 }
