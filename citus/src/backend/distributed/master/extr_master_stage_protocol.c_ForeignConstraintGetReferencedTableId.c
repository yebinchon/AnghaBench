
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ subtype; scalar_t__ def; } ;
struct TYPE_5__ {int missing_ok; int cmds; } ;
struct TYPE_4__ {scalar_t__ contype; int * pktable; } ;
typedef int RangeVar ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_1__ Constraint ;
typedef TYPE_2__ AlterTableStmt ;
typedef TYPE_3__ AlterTableCmd ;


 scalar_t__ AT_AddConstraint ;
 scalar_t__ CONSTR_FOREIGN ;
 int InvalidOid ;
 int NoLock ;
 int * ParseTreeNode (char*) ;
 int RangeVarGetRelid (int *,int ,int ) ;
 scalar_t__ linitial (int ) ;

Oid
ForeignConstraintGetReferencedTableId(char *queryString)
{
 Node *queryNode = ParseTreeNode(queryString);
 AlterTableStmt *foreignConstraintStmt = (AlterTableStmt *) queryNode;
 AlterTableCmd *command = (AlterTableCmd *) linitial(foreignConstraintStmt->cmds);

 if (command->subtype == AT_AddConstraint)
 {
  Constraint *constraint = (Constraint *) command->def;
  if (constraint->contype == CONSTR_FOREIGN)
  {
   RangeVar *referencedTable = constraint->pktable;

   return RangeVarGetRelid(referencedTable, NoLock,
         foreignConstraintStmt->missing_ok);
  }
 }

 return InvalidOid;
}
