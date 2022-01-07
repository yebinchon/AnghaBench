
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {float speed; } ;
struct TYPE_3__ {short left; short right; } ;


 int Com_DPrintf (char*,int,int) ;
 int MAX_RAW_SAMPLES ;
 TYPE_2__ dma ;
 int s_rawend ;
 TYPE_1__* s_rawsamples ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;
 int s_soundtime ;

void S_RawSamples( int samples, int rate, int width, int s_channels, const byte *data, float volume ) {
 int i;
 int src, dst;
 float scale;
 int intVolume;

 if ( !s_soundStarted || s_soundMuted ) {
  return;
 }

 intVolume = 256 * volume;

 if ( s_rawend < s_soundtime ) {
  Com_DPrintf( "S_RawSamples: resetting minimum: %i < %i\n", s_rawend, s_soundtime );
  s_rawend = s_soundtime;
 }

 scale = (float)rate / dma.speed;


 if (s_channels == 2 && width == 2)
 {
  if (scale == 1.0)
  {
   for (i=0 ; i<samples ; i++)
   {
    dst = s_rawend&(MAX_RAW_SAMPLES-1);
    s_rawend++;
    s_rawsamples[dst].left = ((short *)data)[i*2] * intVolume;
    s_rawsamples[dst].right = ((short *)data)[i*2+1] * intVolume;
   }
  }
  else
  {
   for (i=0 ; ; i++)
   {
    src = i*scale;
    if (src >= samples)
     break;
    dst = s_rawend&(MAX_RAW_SAMPLES-1);
    s_rawend++;
    s_rawsamples[dst].left = ((short *)data)[src*2] * intVolume;
    s_rawsamples[dst].right = ((short *)data)[src*2+1] * intVolume;
   }
  }
 }
 else if (s_channels == 1 && width == 2)
 {
  for (i=0 ; ; i++)
  {
   src = i*scale;
   if (src >= samples)
    break;
   dst = s_rawend&(MAX_RAW_SAMPLES-1);
   s_rawend++;
   s_rawsamples[dst].left = ((short *)data)[src] * intVolume;
   s_rawsamples[dst].right = ((short *)data)[src] * intVolume;
  }
 }
 else if (s_channels == 2 && width == 1)
 {
  intVolume *= 256;

  for (i=0 ; ; i++)
  {
   src = i*scale;
   if (src >= samples)
    break;
   dst = s_rawend&(MAX_RAW_SAMPLES-1);
   s_rawend++;
   s_rawsamples[dst].left = ((char *)data)[src*2] * intVolume;
   s_rawsamples[dst].right = ((char *)data)[src*2+1] * intVolume;
  }
 }
 else if (s_channels == 1 && width == 1)
 {
  intVolume *= 256;

  for (i=0 ; ; i++)
  {
   src = i*scale;
   if (src >= samples)
    break;
   dst = s_rawend&(MAX_RAW_SAMPLES-1);
   s_rawend++;
   s_rawsamples[dst].left = (((byte *)data)[src]-128) * intVolume;
   s_rawsamples[dst].right = (((byte *)data)[src]-128) * intVolume;
  }
 }

 if ( s_rawend > s_soundtime + MAX_RAW_SAMPLES ) {
  Com_DPrintf( "S_RawSamples: overflowed %i > %i\n", s_rawend, s_soundtime );
 }
}
