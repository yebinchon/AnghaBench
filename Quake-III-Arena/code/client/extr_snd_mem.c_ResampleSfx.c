
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* sndChunk; struct TYPE_6__* next; } ;
typedef TYPE_1__ sndBuffer ;
struct TYPE_7__ {float soundLength; TYPE_1__* soundData; } ;
typedef TYPE_2__ sfx_t ;
typedef int qboolean ;
typedef int data ;
typedef int byte ;
struct TYPE_8__ {float speed; } ;


 int LittleShort (short) ;
 int SND_CHUNK_SIZE ;
 TYPE_1__* SND_malloc () ;
 TYPE_3__ dma ;

__attribute__((used)) static void ResampleSfx( sfx_t *sfx, int inrate, int inwidth, byte *data, qboolean compressed ) {
 int outcount;
 int srcsample;
 float stepscale;
 int i;
 int sample, samplefrac, fracstep;
 int part;
 sndBuffer *chunk;

 stepscale = (float)inrate / dma.speed;

 outcount = sfx->soundLength / stepscale;
 sfx->soundLength = outcount;

 samplefrac = 0;
 fracstep = stepscale * 256;
 chunk = sfx->soundData;

 for (i=0 ; i<outcount ; i++)
 {
  srcsample = samplefrac >> 8;
  samplefrac += fracstep;
  if( inwidth == 2 ) {
   sample = LittleShort ( ((short *)data)[srcsample] );
  } else {
   sample = (int)( (unsigned char)(data[srcsample]) - 128) << 8;
  }
  part = (i&(SND_CHUNK_SIZE-1));
  if (part == 0) {
   sndBuffer *newchunk;
   newchunk = SND_malloc();
   if (chunk == ((void*)0)) {
    sfx->soundData = newchunk;
   } else {
    chunk->next = newchunk;
   }
   chunk = newchunk;
  }

  chunk->sndChunk[part] = sample;
 }
}
