
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int playing; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;


 int CSND_SetPlayState (int,int) ;
 int CSND_SetVol (int,int,int ) ;
 int csndExecCmds (int) ;

__attribute__((used)) static bool ctr_csnd_audio_start(void *data, bool is_shutdown)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;



   if (is_shutdown)
      return 1;






   CSND_SetVol(0x8, 0x00008000, 0);
   CSND_SetVol(0x9, 0x80000000, 0);

   csndExecCmds(0);

   ctr->playing = 1;

   return 1;
}
