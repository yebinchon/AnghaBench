
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commandType; } ;
typedef TYPE_1__ Query ;
typedef scalar_t__ CmdType ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_UPDATE ;

bool
IsModifyCommand(Query *query)
{
 CmdType commandType = query->commandType;

 if (commandType == CMD_INSERT || commandType == CMD_UPDATE ||
  commandType == CMD_DELETE)
 {
  return 1;
 }

 return 0;
}
