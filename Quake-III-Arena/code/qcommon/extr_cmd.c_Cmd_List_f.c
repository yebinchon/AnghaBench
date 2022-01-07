
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ cmd_function_t ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Filter (char*,int,int ) ;
 int Com_Printf (char*,int) ;
 TYPE_1__* cmd_functions ;
 int qfalse ;

void Cmd_List_f (void)
{
 cmd_function_t *cmd;
 int i;
 char *match;

 if ( Cmd_Argc() > 1 ) {
  match = Cmd_Argv( 1 );
 } else {
  match = ((void*)0);
 }

 i = 0;
 for (cmd=cmd_functions ; cmd ; cmd=cmd->next) {
  if (match && !Com_Filter(match, cmd->name, qfalse)) continue;

  Com_Printf ("%s\n", cmd->name);
  i++;
 }
 Com_Printf ("%i commands\n", i);
}
