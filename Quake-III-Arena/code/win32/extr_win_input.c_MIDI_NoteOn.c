
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysMsgTime; } ;


 int K_AUX1 ;
 int MIDI_NoteOff (int) ;
 int SE_KEY ;
 int Sys_QueEvent (int ,int ,int,int ,int ,int *) ;
 TYPE_1__ g_wv ;
 int qtrue ;

__attribute__((used)) static void MIDI_NoteOn( int note, int velocity )
{
 int qkey;

 if ( velocity == 0 )
  MIDI_NoteOff( note );

 qkey = note - 60 + K_AUX1;

 if ( qkey > 255 || qkey < K_AUX1 )
  return;

 Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, qkey, qtrue, 0, ((void*)0) );
}
