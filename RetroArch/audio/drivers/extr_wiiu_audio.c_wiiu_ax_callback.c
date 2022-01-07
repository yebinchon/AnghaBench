
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ written; int spinlock; int mvoice; } ;
typedef TYPE_1__ ax_audio_t ;


 scalar_t__ AXIsMultiVoiceRunning (int ) ;
 int AXSetMultiVoiceState (int ,int ) ;
 scalar_t__ AX_AUDIO_SAMPLE_COUNT ;
 scalar_t__ AX_AUDIO_SAMPLE_MIN ;
 int AX_VOICE_STATE_STOPPED ;
 scalar_t__ OSUninterruptibleSpinLock_Acquire (int *) ;
 int OSUninterruptibleSpinLock_Release (int *) ;
 int * wiiu_cb_ax ;

void wiiu_ax_callback(void)
{

   if(wiiu_cb_ax == ((void*)0))
      return;

   ax_audio_t *ax = (ax_audio_t*)wiiu_cb_ax;
   if(AXIsMultiVoiceRunning(ax->mvoice))
   {
      if(OSUninterruptibleSpinLock_Acquire(&ax->spinlock))
      {

         if(ax->written < AX_AUDIO_SAMPLE_MIN)
            AXSetMultiVoiceState(ax->mvoice, AX_VOICE_STATE_STOPPED);
         ax->written -= AX_AUDIO_SAMPLE_COUNT;
         OSUninterruptibleSpinLock_Release(&ax->spinlock);
      }
   }
}
