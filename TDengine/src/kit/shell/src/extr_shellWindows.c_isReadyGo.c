
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; int command; } ;
typedef TYPE_1__ Command ;


 int MAX_COMMAND_SIZE ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int memset (char*,int ,int) ;
 scalar_t__ regex_match (char*,char*,int) ;
 int sprintf (char*,char*,char*,int ) ;

int isReadyGo(Command *cmd) {
  char total[MAX_COMMAND_SIZE];
  memset(total, 0, MAX_COMMAND_SIZE);
  sprintf(total, "%s%s", cmd->buffer, cmd->command);

  char *reg_str =
      "(^.*;\\s*$)|(^\\s*$)|(^\\s*exit\\s*$)|(^\\s*q\\s*$)|(^\\s*quit\\s*$)|(^"
      "\\s*clear\\s*$)";
  if (regex_match(total, reg_str, REG_EXTENDED | REG_ICASE)) return 1;

  return 0;
}
