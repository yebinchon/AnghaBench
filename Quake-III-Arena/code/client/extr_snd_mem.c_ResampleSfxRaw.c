
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int data ;
typedef int byte ;
struct TYPE_2__ {float speed; } ;


 int LittleShort (short) ;
 TYPE_1__ dma ;

__attribute__((used)) static int ResampleSfxRaw( short *sfx, int inrate, int inwidth, int samples, byte *data ) {
 int outcount;
 int srcsample;
 float stepscale;
 int i;
 int sample, samplefrac, fracstep;

 stepscale = (float)inrate / dma.speed;

 outcount = samples / stepscale;

 samplefrac = 0;
 fracstep = stepscale * 256;

 for (i=0 ; i<outcount ; i++)
 {
  srcsample = samplefrac >> 8;
  samplefrac += fracstep;
  if( inwidth == 2 ) {
   sample = LittleShort ( ((short *)data)[srcsample] );
  } else {
   sample = (int)( (unsigned char)(data[srcsample]) - 128) << 8;
  }
  sfx[i] = sample;
 }
 return outcount;
}
