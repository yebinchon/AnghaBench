
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int name; int is_local; } ;
typedef TYPE_1__ VariableSetStmt ;


 int IsSettingSafeToPropagate (int ) ;
 scalar_t__ PROPSETCMD_LOCAL ;
 scalar_t__ PropagateSetCommands ;







bool
ShouldPropagateSetCommand(VariableSetStmt *setStmt)
{
 if (PropagateSetCommands != PROPSETCMD_LOCAL)
 {

  return 0;
 }

 switch (setStmt->kind)
 {
  case 128:
  case 131:
  case 130:
  {

   return setStmt->is_local && IsSettingSafeToPropagate(setStmt->name);
  }

  case 133:
  {

   return IsSettingSafeToPropagate(setStmt->name);
  }

  case 132:
  {

   return 1;
  }

  case 129:
  default:
  {

   return 0;
  }
 }
}
