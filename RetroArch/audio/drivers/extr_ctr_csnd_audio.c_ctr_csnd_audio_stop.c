
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int playing; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;


 int CSND_SetPlayState (int,int ) ;
 int CSND_SetVol (int,int,int ) ;
 int csndExecCmds (int) ;

__attribute__((used)) static bool ctr_csnd_audio_stop(void *data)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;
   CSND_SetVol(0x8, 0x00000001, 0);
   CSND_SetVol(0x9, 0x00010000, 0);
   csndExecCmds(0);

   ctr->playing = 0;

   return 1;
}
