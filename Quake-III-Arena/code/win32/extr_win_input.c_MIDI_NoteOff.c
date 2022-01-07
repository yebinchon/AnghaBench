
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysMsgTime; } ;


 int K_AUX1 ;
 int SE_KEY ;
 int Sys_QueEvent (int ,int ,int,int ,int ,int *) ;
 TYPE_1__ g_wv ;
 int qfalse ;

__attribute__((used)) static void MIDI_NoteOff( int note )
{
 int qkey;

 qkey = note - 60 + K_AUX1;

 if ( qkey > 255 || qkey < K_AUX1 )
  return;

 Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, qkey, qfalse, 0, ((void*)0) );
}
