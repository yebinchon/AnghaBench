
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mvoice; } ;
typedef TYPE_1__ ax_audio_t ;


 int AXIsMultiVoiceRunning (int ) ;

__attribute__((used)) static bool ax_audio_alive(void* data)
{
   ax_audio_t* ax = (ax_audio_t*)data;
   return AXIsMultiVoiceRunning(ax->mvoice);
}
