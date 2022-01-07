
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_blob {TYPE_1__* csb_cd; } ;
struct TYPE_2__ {scalar_t__ version; scalar_t__ teamOffset; } ;
typedef TYPE_1__ CS_CodeDirectory ;


 scalar_t__ CS_SUPPORTSTEAMID ;
 int cs_debug ;
 int ntohl (scalar_t__) ;
 int printf (char*,char const*) ;

__attribute__((used)) static const char *
csblob_parse_teamid(struct cs_blob *csblob)
{
 const CS_CodeDirectory *cd;

 cd = csblob->csb_cd;

 if (ntohl(cd->version) < CS_SUPPORTSTEAMID)
  return ((void*)0);

 if (cd->teamOffset == 0)
  return ((void*)0);

 const char *name = ((const char *)cd) + ntohl(cd->teamOffset);
 if (cs_debug > 1)
  printf("found team-id %s in cdblob\n", name);

 return name;
}
