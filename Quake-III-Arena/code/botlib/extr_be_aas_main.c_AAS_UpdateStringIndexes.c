
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** configstrings; int indexessetup; } ;


 scalar_t__ GetMemory (scalar_t__) ;
 TYPE_1__ aasworld ;
 int qtrue ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

void AAS_UpdateStringIndexes(int numconfigstrings, char *configstrings[])
{
 int i;

 for (i = 0; i < numconfigstrings; i++)
 {
  if (configstrings[i])
  {

   aasworld.configstrings[i] = (char *) GetMemory(strlen(configstrings[i]) + 1);
   strcpy(aasworld.configstrings[i], configstrings[i]);
  }
 }
 aasworld.indexessetup = qtrue;
}
