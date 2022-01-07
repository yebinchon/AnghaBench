
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xcommand_t ;
struct TYPE_4__ {struct TYPE_4__* next; int * function; int name; } ;
typedef TYPE_1__ cmd_function_t ;


 int Com_Printf (char*,char const*) ;
 int CopyString (char const*) ;
 TYPE_1__* S_Malloc (int) ;
 TYPE_1__* cmd_functions ;
 int strcmp (char const*,int ) ;

void Cmd_AddCommand( const char *cmd_name, xcommand_t function ) {
 cmd_function_t *cmd;


 for ( cmd = cmd_functions ; cmd ; cmd=cmd->next ) {
  if ( !strcmp( cmd_name, cmd->name ) ) {

   if ( function != ((void*)0) ) {
    Com_Printf ("Cmd_AddCommand: %s already defined\n", cmd_name);
   }
   return;
  }
 }


 cmd = S_Malloc (sizeof(cmd_function_t));
 cmd->name = CopyString( cmd_name );
 cmd->function = function;
 cmd->next = cmd_functions;
 cmd_functions = cmd;
}
