
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
typedef int cheatlist_struct ;
struct TYPE_4__ {int type; int enable; int * desc; void* val; void* addr; } ;


 int CHEATTYPE_NONE ;
 TYPE_1__* cheatlist ;
 size_t cheatsize ;
 size_t numcheats ;
 TYPE_1__* realloc (TYPE_1__*,int) ;

int CheatAddCode(int type, u32 addr, u32 val)
{
   if (cheatlist == ((void*)0))
      return -1;

   cheatlist[numcheats].type = type;
   cheatlist[numcheats].addr = addr;
   cheatlist[numcheats].val = val;
   cheatlist[numcheats].desc = ((void*)0);
   cheatlist[numcheats].enable = 1;
   numcheats++;


   if (numcheats >= cheatsize)
   {
      cheatlist = realloc(cheatlist, sizeof(cheatlist_struct) * (cheatsize * 2));
      cheatsize *= 2;
   }

   cheatlist[numcheats].type = CHEATTYPE_NONE;

   return 0;
}
