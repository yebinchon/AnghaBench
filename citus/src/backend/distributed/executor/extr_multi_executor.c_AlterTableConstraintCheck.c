
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* plannedstmt; } ;
struct TYPE_4__ {scalar_t__ commandType; int planTree; } ;
typedef TYPE_2__ QueryDesc ;


 int AlterTableInProgress () ;
 scalar_t__ CMD_SELECT ;
 int IsCitusPlan (int ) ;

__attribute__((used)) static bool
AlterTableConstraintCheck(QueryDesc *queryDesc)
{
 if (!AlterTableInProgress())
 {
  return 0;
 }





 if (queryDesc->plannedstmt->commandType != CMD_SELECT)
 {
  return 0;
 }






 if (!IsCitusPlan(queryDesc->plannedstmt->planTree))
 {
  return 0;
 }

 return 1;
}
