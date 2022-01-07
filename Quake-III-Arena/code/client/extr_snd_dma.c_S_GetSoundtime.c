
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int samples; int channels; int submission_chunk; int speed; } ;
struct TYPE_3__ {int value; } ;


 int Com_DPrintf (char*) ;
 int SNDDMA_GetDMAPos () ;
 int S_StopAllSounds () ;
 TYPE_2__ dma ;
 TYPE_1__* s_mixPreStep ;
 int s_paintedtime ;
 int s_soundtime ;

void S_GetSoundtime(void)
{
 int samplepos;
 static int buffers;
 static int oldsamplepos;
 int fullsamples;

 fullsamples = dma.samples / dma.channels;



 samplepos = SNDDMA_GetDMAPos();
 if (samplepos < oldsamplepos)
 {
  buffers++;

  if (s_paintedtime > 0x40000000)
  {
   buffers = 0;
   s_paintedtime = fullsamples;
   S_StopAllSounds ();
  }
 }
 oldsamplepos = samplepos;

 s_soundtime = buffers*fullsamples + samplepos/dma.channels;
 if ( dma.submission_chunk < 256 ) {
  s_paintedtime = s_soundtime + s_mixPreStep->value * dma.speed;
 } else {
  s_paintedtime = s_soundtime + dma.submission_chunk;
 }
}
