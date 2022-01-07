
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ cheatlist_struct ;


 int CHEATTYPE_NONE ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__* cheatlist ;
 int cheatsize ;

int CheatInit(void)
{
   cheatsize = 10;
   if ((cheatlist = (cheatlist_struct *)calloc(cheatsize, sizeof(cheatlist_struct))) == ((void*)0))
      return -1;
   cheatlist[0].type = CHEATTYPE_NONE;

   return 0;
}
