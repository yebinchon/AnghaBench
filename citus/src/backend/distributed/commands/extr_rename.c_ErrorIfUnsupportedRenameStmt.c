
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ renameType; } ;
typedef TYPE_1__ RenameStmt ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ IsAlterTableRenameStmt (TYPE_1__*) ;
 scalar_t__ OBJECT_TABCONSTRAINT ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
ErrorIfUnsupportedRenameStmt(RenameStmt *renameStmt)
{
 if (IsAlterTableRenameStmt(renameStmt) &&
  renameStmt->renameType == OBJECT_TABCONSTRAINT)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("renaming constraints belonging to distributed tables is "
          "currently unsupported")));
 }
}
