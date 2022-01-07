
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cheatlist_struct ;
struct TYPE_4__ {int type; int * desc; } ;


 int CHEATTYPE_NONE ;
 TYPE_1__* cheatlist ;
 int free (int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int numcheats ;

int CheatRemoveCodeByIndex(int i)
{

   if (cheatlist[i].desc)
   {
      free(cheatlist[i].desc);
      cheatlist[i].desc = ((void*)0);
   }


   for (; i < numcheats-1; i++)
      memcpy(&cheatlist[i], &cheatlist[i+1], sizeof(cheatlist_struct));

   numcheats--;


   cheatlist[numcheats].type = CHEATTYPE_NONE;

   return 0;
}
