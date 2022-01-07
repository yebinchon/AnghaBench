
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int indexessetup; } ;
struct TYPE_3__ {int (* Print ) (int ,char*,char*,char*) ;} ;


 int PRT_ERROR ;
 int Q_stricmp (char*,char*) ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,char*,char*) ;

int AAS_IndexFromString(char *indexname, char *stringindex[], int numindexes, char *string)
{
 int i;
 if (!aasworld.indexessetup)
 {
  botimport.Print(PRT_ERROR, "%s: index not setup \"%s\"\n", indexname, string);
  return 0;
 }
 for (i = 0; i < numindexes; i++)
 {
  if (!stringindex[i]) continue;
  if (!Q_stricmp(stringindex[i], string)) return i;
 }
 return 0;
}
