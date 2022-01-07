
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sid_kind; int sid_authcount; int* sid_authority; int* sid_authorities; } ;
typedef TYPE_1__ ntsid_t ;



__attribute__((used)) static const char*
nfs4_sid2wkid(ntsid_t *sp)
{
 if ((sp->sid_kind == 1) && (sp->sid_authcount == 1)) {

  if (sp->sid_authority[5] == 0) {
   if (sp->sid_authorities[0] == 0)
    return ("nobody@localdomain");
  } else if (sp->sid_authority[5] == 1) {
   if (sp->sid_authorities[0] == 0)
    return ("EVERYONE@");
  } else if (sp->sid_authority[5] == 3) {
   if (sp->sid_authorities[0] == 0)
    return ("OWNER@");
   else if (sp->sid_authorities[0] == 1)
    return ("GROUP@");
  } else if (sp->sid_authority[5] == 5) {
   if (sp->sid_authorities[0] == 1)
    return ("DIALUP@");
   else if (sp->sid_authorities[0] == 2)
    return ("NETWORK@");
   else if (sp->sid_authorities[0] == 3)
    return ("BATCH@");
   else if (sp->sid_authorities[0] == 4)
    return ("INTERACTIVE@");
   else if (sp->sid_authorities[0] == 6)
    return ("SERVICE@");
   else if (sp->sid_authorities[0] == 7)
    return ("ANONYMOUS@");
   else if (sp->sid_authorities[0] == 11)
    return ("AUTHENTICATED@");
  }
 }
 return (((void*)0));
}
