
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ renameType; int relationType; } ;
typedef TYPE_1__ RenameStmt ;


 int Assert (int) ;
 char const* DeparseRenameTypeAttributeStmt (TYPE_1__*) ;
 int ERROR ;
 scalar_t__ OBJECT_ATTRIBUTE ;

 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static const char *
DeparseRenameAttributeStmt(RenameStmt *stmt)
{
 Assert(stmt->renameType == OBJECT_ATTRIBUTE);

 switch (stmt->relationType)
 {
  case 128:
  {
   return DeparseRenameTypeAttributeStmt(stmt);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported rename attribute statement for"
           " deparsing")));
  }
 }
}
