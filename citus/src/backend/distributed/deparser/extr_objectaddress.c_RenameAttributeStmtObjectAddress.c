
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ renameType; int relationType; } ;
typedef TYPE_1__ RenameStmt ;
typedef int ObjectAddress ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ OBJECT_ATTRIBUTE ;

 int const* RenameTypeAttributeStmtObjectAddress (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const ObjectAddress *
RenameAttributeStmtObjectAddress(RenameStmt *stmt, bool missing_ok)
{
 Assert(stmt->renameType == OBJECT_ATTRIBUTE);

 switch (stmt->relationType)
 {
  case 128:
  {
   return RenameTypeAttributeStmtObjectAddress(stmt, missing_ok);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported alter rename attribute statement to get "
           "object address for")));
  }
 }
}
