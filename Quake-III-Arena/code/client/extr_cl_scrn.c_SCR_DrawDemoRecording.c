
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* demoName; int demofile; scalar_t__ spDemoRecording; int demorecording; } ;


 int FS_FTell (int ) ;
 int SCR_DrawStringExt (int,int,int,char*,int ,int ) ;
 TYPE_1__ clc ;
 int * g_color_table ;
 int qtrue ;
 int sprintf (char*,char*,char*,int) ;
 int strlen (char*) ;

void SCR_DrawDemoRecording( void ) {
 char string[1024];
 int pos;

 if ( !clc.demorecording ) {
  return;
 }
 if ( clc.spDemoRecording ) {
  return;
 }

 pos = FS_FTell( clc.demofile );
 sprintf( string, "RECORDING %s: %ik", clc.demoName, pos / 1024 );

 SCR_DrawStringExt( 320 - strlen( string ) * 4, 20, 8, string, g_color_table[7], qtrue );
}
