
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_blob {int dummy; } ;
struct TYPE_2__ {scalar_t__ identOffset; } ;
typedef TYPE_1__ CS_CodeDirectory ;


 int CSMAGIC_CODEDIRECTORY ;
 int CSSLOT_CODEDIRECTORY ;
 scalar_t__ csblob_find_blob (struct cs_blob*,int ,int ) ;
 int ntohl (scalar_t__) ;

const char *
csblob_get_identity(struct cs_blob *csblob)
{
 const CS_CodeDirectory *cd;

 cd = (const CS_CodeDirectory *)csblob_find_blob(csblob, CSSLOT_CODEDIRECTORY, CSMAGIC_CODEDIRECTORY);
 if (cd == ((void*)0))
  return ((void*)0);

 if (cd->identOffset == 0)
  return ((void*)0);

 return ((const char *)cd) + ntohl(cd->identOffset);
}
