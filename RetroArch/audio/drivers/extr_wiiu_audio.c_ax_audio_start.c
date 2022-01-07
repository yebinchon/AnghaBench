
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ written; scalar_t__ pos; int mvoice; } ;
typedef TYPE_1__ ax_audio_t ;


 int AXSetMultiVoiceCurrentOffset (int ,int ) ;
 int AXSetMultiVoiceState (int ,int ) ;
 scalar_t__ AX_AUDIO_SAMPLE_LOAD ;
 int AX_VOICE_STATE_PLAYING ;
 int ax_audio_limit (scalar_t__) ;

__attribute__((used)) static bool ax_audio_start(void* data, bool is_shutdown)
{
   ax_audio_t* ax = (ax_audio_t*)data;



   if (is_shutdown)
      return 1;


   if(ax->written > AX_AUDIO_SAMPLE_LOAD)
   {
      AXSetMultiVoiceCurrentOffset(ax->mvoice, ax_audio_limit(ax->pos - ax->written));
      AXSetMultiVoiceState(ax->mvoice, AX_VOICE_STATE_PLAYING);
   }
   return 1;
}
