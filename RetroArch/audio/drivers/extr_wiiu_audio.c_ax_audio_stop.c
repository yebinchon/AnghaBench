
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mvoice; } ;
typedef TYPE_1__ ax_audio_t ;


 int AXSetMultiVoiceState (int ,int ) ;
 int AX_VOICE_STATE_STOPPED ;

__attribute__((used)) static bool ax_audio_stop(void* data)
{
   ax_audio_t* ax = (ax_audio_t*)data;

   AXSetMultiVoiceState(ax->mvoice, AX_VOICE_STATE_STOPPED);
   return 1;
}
