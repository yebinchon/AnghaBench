
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r; int l; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;


 int CSND_SetPlayState (int,int ) ;
 int csndExecCmds (int) ;
 int csndExit () ;
 int free (TYPE_1__*) ;
 int linearFree (int ) ;

__attribute__((used)) static void ctr_csnd_audio_free(void *data)
{
   ctr_csnd_audio_t* ctr = (ctr_csnd_audio_t*)data;




   CSND_SetPlayState(0x8, 0);
   CSND_SetPlayState(0x9, 0);
   csndExecCmds(0);

   linearFree(ctr->l);
   linearFree(ctr->r);

   free(ctr);
}
