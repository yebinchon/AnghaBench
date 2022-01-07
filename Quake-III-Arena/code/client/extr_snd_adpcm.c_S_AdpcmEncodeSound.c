
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {short sample; scalar_t__ index; } ;
struct TYPE_9__ {scalar_t__ sndChunk; TYPE_1__ adpcm; struct TYPE_9__* next; } ;
typedef TYPE_2__ sndBuffer ;
struct TYPE_10__ {int soundLength; TYPE_2__* soundData; } ;
typedef TYPE_3__ sfx_t ;
typedef int byte ;
struct TYPE_11__ {short sample; scalar_t__ index; } ;
typedef TYPE_4__ adpcm_state_t ;


 int SND_CHUNK_SIZE_BYTE ;
 TYPE_2__* SND_malloc () ;
 int S_AdpcmEncode (short*,int *,int,TYPE_4__*) ;

void S_AdpcmEncodeSound( sfx_t *sfx, short *samples ) {
 adpcm_state_t state;
 int inOffset;
 int count;
 int n;
 sndBuffer *newchunk, *chunk;
 byte *out;

 inOffset = 0;
 count = sfx->soundLength;
 state.index = 0;
 state.sample = samples[0];

 chunk = ((void*)0);
 while( count ) {
  n = count;
  if( n > SND_CHUNK_SIZE_BYTE*2 ) {
   n = SND_CHUNK_SIZE_BYTE*2;
  }

  newchunk = SND_malloc();
  if (sfx->soundData == ((void*)0)) {
   sfx->soundData = newchunk;
  } else {
   chunk->next = newchunk;
  }
  chunk = newchunk;


  chunk->adpcm.index = state.index;
  chunk->adpcm.sample = state.sample;

  out = (byte *)chunk->sndChunk;


  S_AdpcmEncode( samples + inOffset, out, n, &state );

  inOffset += n;
  count -= n;
 }
}
