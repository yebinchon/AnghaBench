
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; struct TYPE_3__* next; } ;
typedef TYPE_1__ cmd_function_t ;


 TYPE_1__* cmd_functions ;

void Cmd_CommandCompletion( void(*callback)(const char *s) ) {
 cmd_function_t *cmd;

 for (cmd=cmd_functions ; cmd ; cmd=cmd->next) {
  callback( cmd->name );
 }
}
