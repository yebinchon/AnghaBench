
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* thesfx; scalar_t__ rightvol; scalar_t__ leftvol; } ;
typedef TYPE_2__ channel_t ;
struct TYPE_7__ {int integer; } ;
struct TYPE_5__ {int soundName; } ;


 int Com_DPrintf (char*) ;
 int Com_Printf (char*,int,int ,...) ;
 int MAX_CHANNELS ;
 int S_UpdateBackgroundTrack () ;
 int S_Update_ () ;
 TYPE_2__* s_channels ;
 int s_paintedtime ;
 TYPE_3__* s_show ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;

void S_Update( void ) {
 int i;
 int total;
 channel_t *ch;

 if ( !s_soundStarted || s_soundMuted ) {
  Com_DPrintf ("not started or muted\n");
  return;
 }




 if ( s_show->integer == 2 ) {
  total = 0;
  ch = s_channels;
  for (i=0 ; i<MAX_CHANNELS; i++, ch++) {
   if (ch->thesfx && (ch->leftvol || ch->rightvol) ) {
    Com_Printf ("%f %f %s\n", ch->leftvol, ch->rightvol, ch->thesfx->soundName);
    total++;
   }
  }

  Com_Printf ("----(%i)---- painted: %i\n", total, s_paintedtime);
 }


 S_UpdateBackgroundTrack();


 S_Update_();
}
