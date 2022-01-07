
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sid_kind; int sid_authcount; int* sid_authority; int* sid_authorities; } ;
typedef TYPE_1__ ntsid_t ;


 int EINVAL ;
 size_t MAXIDNAMELEN ;
 int bzero (TYPE_1__*,int) ;
 int strcmp (char const*,char*) ;
 size_t strnlen (char const*,size_t) ;

__attribute__((used)) static int
nfs4_wkid2sid(const char *id, ntsid_t *sp)
{
 size_t len = strnlen(id, MAXIDNAMELEN);

 if (len == MAXIDNAMELEN || id[len-1] != '@')
  return (EINVAL);

 bzero(sp, sizeof(ntsid_t));
 sp->sid_kind = 1;
 sp->sid_authcount = 1;
 if (!strcmp(id, "OWNER@")) {

  sp->sid_authority[5] = 3;
  sp->sid_authorities[0] = 0;
 } else if (!strcmp(id, "GROUP@")) {

  sp->sid_authority[5] = 3;
  sp->sid_authorities[0] = 1;
 } else if (!strcmp(id, "EVERYONE@")) {

  sp->sid_authority[5] = 1;
  sp->sid_authorities[0] = 0;
 } else if (!strcmp(id, "INTERACTIVE@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 4;
 } else if (!strcmp(id, "NETWORK@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 2;
 } else if (!strcmp(id, "DIALUP@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 1;
 } else if (!strcmp(id, "BATCH@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 3;
 } else if (!strcmp(id, "ANONYMOUS@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 7;
 } else if (!strcmp(id, "AUTHENTICATED@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 11;
 } else if (!strcmp(id, "SERVICE@")) {

  sp->sid_authority[5] = 5;
  sp->sid_authorities[0] = 6;
 } else {

  sp->sid_authority[5] = 0;
  sp->sid_authorities[0] = 0;
 }
 return (0);
}
