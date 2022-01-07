
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ renameType; scalar_t__ relationType; } ;
typedef TYPE_1__ RenameStmt ;


 scalar_t__ OBJECT_COLUMN ;
 scalar_t__ OBJECT_FOREIGN_TABLE ;
 scalar_t__ OBJECT_TABCONSTRAINT ;
 scalar_t__ OBJECT_TABLE ;

bool
IsAlterTableRenameStmt(RenameStmt *renameStmt)
{
 bool isAlterTableRenameStmt = 0;

 if (renameStmt->renameType == OBJECT_TABLE ||
  renameStmt->renameType == OBJECT_FOREIGN_TABLE)
 {
  isAlterTableRenameStmt = 1;
 }
 else if (renameStmt->renameType == OBJECT_COLUMN &&
    (renameStmt->relationType == OBJECT_TABLE ||
     renameStmt->relationType == OBJECT_FOREIGN_TABLE))
 {
  isAlterTableRenameStmt = 1;
 }
 else if (renameStmt->renameType == OBJECT_TABCONSTRAINT)
 {
  isAlterTableRenameStmt = 1;
 }

 return isAlterTableRenameStmt;
}
