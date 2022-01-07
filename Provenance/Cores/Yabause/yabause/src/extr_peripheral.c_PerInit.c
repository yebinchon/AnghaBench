
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; scalar_t__ (* Init ) () ;} ;


 int PERCORE_DEFAULT ;
 TYPE_1__* PERCore ;
 TYPE_1__** PERCoreList ;
 scalar_t__ stub1 () ;

int PerInit(int coreid) {
   int i;


   if (coreid == PERCORE_DEFAULT)
      coreid = 0;


   for (i = 0; PERCoreList[i] != ((void*)0); i++)
   {
      if (PERCoreList[i]->id == coreid)
      {

         PERCore = PERCoreList[i];
         break;
      }
   }

   if (PERCore == ((void*)0))
      return -1;

   if (PERCore->Init() != 0)
      return -1;

   return 0;
}
