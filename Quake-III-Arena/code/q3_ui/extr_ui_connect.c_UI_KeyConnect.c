
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_APPEND ;
 int K_ESCAPE ;
 int trap_Cmd_ExecuteText (int ,char*) ;

void UI_KeyConnect( int key ) {
 if ( key == K_ESCAPE ) {
  trap_Cmd_ExecuteText( EXEC_APPEND, "disconnect\n" );
  return;
 }
}
