
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ startSample; TYPE_1__* thesfx; } ;
typedef TYPE_2__ channel_t ;
struct TYPE_5__ {scalar_t__ soundLength; } ;


 int MAX_CHANNELS ;
 scalar_t__ START_SAMPLE_IMMEDIATE ;
 int S_ChannelFree (TYPE_2__*) ;
 int qfalse ;
 int qtrue ;
 TYPE_2__* s_channels ;
 scalar_t__ s_paintedtime ;

qboolean S_ScanChannelStarts( void ) {
 channel_t *ch;
 int i;
 qboolean newSamples;

 newSamples = qfalse;
 ch = s_channels;

 for (i=0; i<MAX_CHANNELS ; i++, ch++) {
  if ( !ch->thesfx ) {
   continue;
  }



  if ( ch->startSample == START_SAMPLE_IMMEDIATE ) {
   ch->startSample = s_paintedtime;
   newSamples = qtrue;
   continue;
  }


  if ( ch->startSample + (ch->thesfx->soundLength) <= s_paintedtime ) {
   S_ChannelFree(ch);
  }
 }

 return newSamples;
}
