
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; scalar_t__ (* Init ) () ;int (* Vdp1Reset ) () ;} ;


 int VIDCORE_DEFAULT ;
 TYPE_1__* VIDCore ;
 TYPE_1__** VIDCoreList ;
 scalar_t__ Vdp2Regs ;
 int VideoDeInit () ;
 scalar_t__ stub1 () ;
 int stub2 () ;

int VideoChangeCore(int coreid)
{
   int i;


   VideoDeInit();


   if (coreid == VIDCORE_DEFAULT)
      coreid = 0;


   for (i = 0; VIDCoreList[i] != ((void*)0); i++)
   {
      if (VIDCoreList[i]->id == coreid)
      {

         VIDCore = VIDCoreList[i];
         break;
      }
   }

   if (VIDCore == ((void*)0))
      return -1;

   if (VIDCore->Init() != 0)
      return -1;


   if (Vdp2Regs)
   {
      VIDCore->Vdp1Reset();
   }

   return 0;
}
