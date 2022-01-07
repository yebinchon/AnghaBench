
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ desc; } ;


 TYPE_1__* cheatlist ;
 int free (scalar_t__) ;
 scalar_t__ strdup (char*) ;

int CheatChangeDescriptionByIndex(int i, char *desc)
{

   if (cheatlist[i].desc)
      free(cheatlist[i].desc);

   cheatlist[i].desc = strdup(desc);
   return 0;
}
