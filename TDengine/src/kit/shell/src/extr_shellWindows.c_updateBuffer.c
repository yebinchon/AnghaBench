
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; char* command; scalar_t__ cursorOffset; } ;
typedef TYPE_1__ Command ;


 int MAX_COMMAND_SIZE ;
 int REG_EXTENDED ;
 int memset (char*,int ,int ) ;
 scalar_t__ regex_match (char*,char*,int ) ;
 int strcat (char*,char*) ;

void updateBuffer(Command *cmd) {
  if (regex_match(cmd->buffer, "(\\s+$)|(^$)", REG_EXTENDED)) strcat(cmd->command, " ");
  strcat(cmd->buffer, cmd->command);

  memset(cmd->command, 0, MAX_COMMAND_SIZE);
  cmd->cursorOffset = 0;
}
