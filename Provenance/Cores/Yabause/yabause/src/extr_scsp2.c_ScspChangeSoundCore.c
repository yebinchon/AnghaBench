
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int (* Init ) () ;int (* SetVolume ) (int ) ;int (* UnMuteAudio ) () ;int (* MuteAudio ) () ;scalar_t__ Name; int (* DeInit ) () ;} ;


 int SNDCORE_DEFAULT ;
 TYPE_1__* SNDCore ;
 TYPE_1__** SNDCoreList ;
 TYPE_1__ SNDDummy ;
 int YAB_ERR_CANNOTINIT ;
 int YabSetError (int ,void*) ;
 scalar_t__ scsp_mute_flags ;
 int scsp_volume ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;
 int stub5 (int ) ;

int ScspChangeSoundCore(int coreid)
{
   int i;


   if (SNDCore)
      SNDCore->DeInit();


   if (coreid == SNDCORE_DEFAULT)
      SNDCore = SNDCoreList[0];
   else
   {

      for (i = 0; SNDCoreList[i] != ((void*)0); i++)
      {
         if (SNDCoreList[i]->id == coreid)
         {

            SNDCore = SNDCoreList[i];
            break;
         }
      }
   }

   if (SNDCore == ((void*)0))
   {
      SNDCore = &SNDDummy;
      return -1;
   }

   if (SNDCore->Init() == -1)
   {




      YabSetError(YAB_ERR_CANNOTINIT, (void *)SNDCore->Name);

      SNDCore = &SNDDummy;
   }

   if (SNDCore)
   {
      if (scsp_mute_flags) SNDCore->MuteAudio();
      else SNDCore->UnMuteAudio();
      SNDCore->SetVolume(scsp_volume);
   }

   return 0;
}
