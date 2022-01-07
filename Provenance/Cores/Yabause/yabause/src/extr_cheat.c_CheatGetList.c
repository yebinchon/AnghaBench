
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cheatlist_struct ;


 int * cheatlist ;
 int numcheats ;

cheatlist_struct *CheatGetList(int *cheatnum)
{
   if (cheatnum == ((void*)0))
      return ((void*)0);

   *cheatnum = numcheats;
   return cheatlist;
}
