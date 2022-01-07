
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int indexessetup; } ;
struct TYPE_3__ {int (* Print ) (int ,char*,char*,int) ;} ;


 int PRT_ERROR ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,char*,int) ;
 int stub2 (int ,char*,char*,int) ;
 int stub3 (int ,char*,char*,int) ;

char *AAS_StringFromIndex(char *indexname, char *stringindex[], int numindexes, int index)
{
 if (!aasworld.indexessetup)
 {
  botimport.Print(PRT_ERROR, "%s: index %d not setup\n", indexname, index);
  return "";
 }
 if (index < 0 || index >= numindexes)
 {
  botimport.Print(PRT_ERROR, "%s: index %d out of range\n", indexname, index);
  return "";
 }
 if (!stringindex[index])
 {
  if (index)
  {
   botimport.Print(PRT_ERROR, "%s: reference to unused index %d\n", indexname, index);
  }
  return "";
 }
 return stringindex[index];
}
