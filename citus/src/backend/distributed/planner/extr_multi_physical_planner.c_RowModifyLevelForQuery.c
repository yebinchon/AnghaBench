
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commandType; int * onConflict; } ;
typedef int RowModifyLevel ;
typedef TYPE_1__ Query ;
typedef scalar_t__ CmdType ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_SELECT ;
 scalar_t__ CMD_UPDATE ;
 int ROW_MODIFY_COMMUTATIVE ;
 int ROW_MODIFY_NONCOMMUTATIVE ;
 int ROW_MODIFY_NONE ;
 int ROW_MODIFY_READONLY ;

RowModifyLevel
RowModifyLevelForQuery(Query *query)
{
 CmdType commandType = query->commandType;

 if (commandType == CMD_SELECT)
 {
  return ROW_MODIFY_READONLY;
 }

 if (commandType == CMD_INSERT)
 {
  if (query->onConflict == ((void*)0))
  {
   return ROW_MODIFY_COMMUTATIVE;
  }
  else
  {
   return ROW_MODIFY_NONCOMMUTATIVE;
  }
 }

 if (commandType == CMD_UPDATE ||
  commandType == CMD_DELETE)
 {
  return ROW_MODIFY_NONCOMMUTATIVE;
 }

 return ROW_MODIFY_NONE;
}
