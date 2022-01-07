
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_APPEND ;
 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static void UI_SPPostgameMenu_AgainEvent( void* ptr, int event )
{
 if (event != QM_ACTIVATED) {
  return;
 }
 UI_PopMenu();
 trap_Cmd_ExecuteText( EXEC_APPEND, "map_restart 0\n" );
}
