
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ renameType; } ;
typedef TYPE_1__ RenameStmt ;


 scalar_t__ OBJECT_INDEX ;

bool
IsIndexRenameStmt(RenameStmt *renameStmt)
{
 bool isIndexRenameStmt = 0;

 if (renameStmt->renameType == OBJECT_INDEX)
 {
  isIndexRenameStmt = 1;
 }

 return isIndexRenameStmt;
}
