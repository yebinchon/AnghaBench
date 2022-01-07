
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int loopSound_t ;
typedef int channel_t ;
struct TYPE_2__ {int samplebits; int samples; scalar_t__ buffer; } ;


 int Com_Memset (int ,int ,int) ;
 int MAX_CHANNELS ;
 int MAX_GENTITIES ;
 int SNDDMA_BeginPainting () ;
 int SNDDMA_Submit () ;
 int S_ChannelSetup () ;
 int Snd_Memset (scalar_t__,int,int) ;
 TYPE_1__ dma ;
 int loopSounds ;
 int loop_channels ;
 scalar_t__ numLoopChannels ;
 scalar_t__ s_rawend ;
 int s_soundStarted ;

void S_ClearSoundBuffer( void ) {
 int clear;

 if (!s_soundStarted)
  return;


 Com_Memset(loopSounds, 0, MAX_GENTITIES*sizeof(loopSound_t));
 Com_Memset(loop_channels, 0, MAX_CHANNELS*sizeof(channel_t));
 numLoopChannels = 0;

 S_ChannelSetup();

 s_rawend = 0;

 if (dma.samplebits == 8)
  clear = 0x80;
 else
  clear = 0;

 SNDDMA_BeginPainting ();
 if (dma.buffer)




  Snd_Memset(dma.buffer, clear, dma.samples * dma.samplebits/8);
 SNDDMA_Submit ();
}
