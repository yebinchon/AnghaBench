
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int soundLength; int soundCompressionMethod; int * soundData; } ;
typedef TYPE_1__ sfx_t ;
typedef int portable_samplepair_t ;
struct TYPE_18__ {double leftvol; double rightvol; int startSample; TYPE_1__* thesfx; } ;
typedef TYPE_2__ channel_t ;
struct TYPE_20__ {scalar_t__ right; scalar_t__ left; } ;
struct TYPE_19__ {int value; } ;


 int Com_Memset (TYPE_4__*,int ,int) ;
 int MAX_CHANNELS ;
 int MAX_RAW_SAMPLES ;
 int PAINTBUFFER_SIZE ;
 int S_PaintChannelFrom16 (TYPE_2__*,TYPE_1__*,int,int,int) ;
 int S_PaintChannelFromADPCM (TYPE_2__*,TYPE_1__*,int,int,int) ;
 int S_PaintChannelFromMuLaw (TYPE_2__*,TYPE_1__*,int,int,int) ;
 int S_PaintChannelFromWavelet (TYPE_2__*,TYPE_1__*,int,int,int) ;
 int S_TransferPaintBuffer (int) ;
 TYPE_2__* loop_channels ;
 int numLoopChannels ;
 TYPE_4__* paintbuffer ;
 TYPE_2__* s_channels ;
 int s_paintedtime ;
 int s_rawend ;
 TYPE_4__* s_rawsamples ;
 TYPE_3__* s_volume ;
 int snd_vol ;

void S_PaintChannels( int endtime ) {
 int i;
 int end;
 channel_t *ch;
 sfx_t *sc;
 int ltime, count;
 int sampleOffset;


 snd_vol = s_volume->value*255;


 while ( s_paintedtime < endtime ) {


  end = endtime;
  if ( endtime - s_paintedtime > PAINTBUFFER_SIZE ) {
   end = s_paintedtime + PAINTBUFFER_SIZE;
  }


  if ( s_rawend < s_paintedtime ) {
   if ( s_rawend ) {

   }
   Com_Memset(paintbuffer, 0, (end - s_paintedtime) * sizeof(portable_samplepair_t));
  } else {

   int s;
   int stop;

   stop = (end < s_rawend) ? end : s_rawend;

   for ( i = s_paintedtime ; i < stop ; i++ ) {
    s = i&(MAX_RAW_SAMPLES-1);
    paintbuffer[i-s_paintedtime] = s_rawsamples[s];
   }




   for ( ; i < end ; i++ ) {
    paintbuffer[i-s_paintedtime].left =
    paintbuffer[i-s_paintedtime].right = 0;
   }
  }


  ch = s_channels;
  for ( i = 0; i < MAX_CHANNELS ; i++, ch++ ) {
   if ( !ch->thesfx || (ch->leftvol<0.25 && ch->rightvol<0.25 )) {
    continue;
   }

   ltime = s_paintedtime;
   sc = ch->thesfx;

   sampleOffset = ltime - ch->startSample;
   count = end - ltime;
   if ( sampleOffset + count > sc->soundLength ) {
    count = sc->soundLength - sampleOffset;
   }

   if ( count > 0 ) {
    if( sc->soundCompressionMethod == 1) {
     S_PaintChannelFromADPCM (ch, sc, count, sampleOffset, ltime - s_paintedtime);
    } else if( sc->soundCompressionMethod == 2) {
     S_PaintChannelFromWavelet (ch, sc, count, sampleOffset, ltime - s_paintedtime);
    } else if( sc->soundCompressionMethod == 3) {
     S_PaintChannelFromMuLaw (ch, sc, count, sampleOffset, ltime - s_paintedtime);
    } else {
     S_PaintChannelFrom16 (ch, sc, count, sampleOffset, ltime - s_paintedtime);
    }
   }
  }


  ch = loop_channels;
  for ( i = 0; i < numLoopChannels ; i++, ch++ ) {
   if ( !ch->thesfx || (!ch->leftvol && !ch->rightvol )) {
    continue;
   }

   ltime = s_paintedtime;
   sc = ch->thesfx;

   if (sc->soundData==((void*)0) || sc->soundLength==0) {
    continue;
   }



   do {
    sampleOffset = (ltime % sc->soundLength);

    count = end - ltime;
    if ( sampleOffset + count > sc->soundLength ) {
     count = sc->soundLength - sampleOffset;
    }

    if ( count > 0 ) {
     if( sc->soundCompressionMethod == 1) {
      S_PaintChannelFromADPCM (ch, sc, count, sampleOffset, ltime - s_paintedtime);
     } else if( sc->soundCompressionMethod == 2) {
      S_PaintChannelFromWavelet (ch, sc, count, sampleOffset, ltime - s_paintedtime);
     } else if( sc->soundCompressionMethod == 3) {
      S_PaintChannelFromMuLaw (ch, sc, count, sampleOffset, ltime - s_paintedtime);
     } else {
      S_PaintChannelFrom16 (ch, sc, count, sampleOffset, ltime - s_paintedtime);
     }
     ltime += count;
    }
   } while ( ltime < end);
  }


  S_TransferPaintBuffer( end );
  s_paintedtime = end;
 }
}
