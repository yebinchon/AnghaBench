
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_DIMouse (int*,int*) ;
 int IN_Win32Mouse (int*,int*) ;
 int SE_MOUSE ;
 int Sys_QueEvent (int ,int ,int,int,int ,int *) ;
 scalar_t__ g_pMouse ;

void IN_MouseMove ( void ) {
 int mx, my;

 if ( g_pMouse ) {
  IN_DIMouse( &mx, &my );
 } else {
  IN_Win32Mouse( &mx, &my );
 }

 if ( !mx && !my ) {
  return;
 }

 Sys_QueEvent( 0, SE_MOUSE, mx, my, 0, ((void*)0) );
}
