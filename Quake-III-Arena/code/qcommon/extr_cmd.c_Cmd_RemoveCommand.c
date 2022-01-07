
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* name; } ;
typedef TYPE_1__ cmd_function_t ;


 int Z_Free (TYPE_1__*) ;
 TYPE_1__* cmd_functions ;
 int strcmp (char const*,TYPE_1__*) ;

void Cmd_RemoveCommand( const char *cmd_name ) {
 cmd_function_t *cmd, **back;

 back = &cmd_functions;
 while( 1 ) {
  cmd = *back;
  if ( !cmd ) {

   return;
  }
  if ( !strcmp( cmd_name, cmd->name ) ) {
   *back = cmd->next;
   if (cmd->name) {
    Z_Free(cmd->name);
   }
   Z_Free (cmd);
   return;
  }
  back = &cmd->next;
 }
}
