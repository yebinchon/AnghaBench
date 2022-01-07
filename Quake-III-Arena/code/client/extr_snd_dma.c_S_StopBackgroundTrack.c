
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FS_FCloseFile (scalar_t__) ;
 int Sys_EndStreamedFile (scalar_t__) ;
 scalar_t__ s_backgroundFile ;
 scalar_t__ s_rawend ;

void S_StopBackgroundTrack( void ) {
 if ( !s_backgroundFile ) {
  return;
 }
 Sys_EndStreamedFile( s_backgroundFile );
 FS_FCloseFile( s_backgroundFile );
 s_backgroundFile = 0;
 s_rawend = 0;
}
