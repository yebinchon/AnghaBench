
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_APPEND ;
 int trap_Cmd_ExecuteText (int ,char*) ;

void UI_StartDemoLoop( void ) {
 trap_Cmd_ExecuteText( EXEC_APPEND, "d1\n" );
}
