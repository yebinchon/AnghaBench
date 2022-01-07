
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int AlterEnumStmt ;
 int AlterFunctionStmt ;
 int AlterObjectDependsStmt ;
 int AlterObjectSchemaStmt ;
 int AlterOwnerStmt ;
 int AlterRoleStmt ;
 int AlterTableStmt ;
 int CompositeTypeStmt ;
 int CreateEnumStmt ;
 char const* DeparseAlterEnumStmt (int ) ;
 char const* DeparseAlterFunctionStmt (int ) ;
 char const* DeparseAlterObjectDependsStmt (int ) ;
 char const* DeparseAlterObjectSchemaStmt (int ) ;
 char const* DeparseAlterOwnerStmt (int ) ;
 char const* DeparseAlterRoleStmt (int ) ;
 char const* DeparseAlterTableStmt (int ) ;
 char const* DeparseCompositeTypeStmt (int ) ;
 char const* DeparseCreateEnumStmt (int ) ;
 char const* DeparseDropStmt (int ) ;
 char const* DeparseRenameStmt (int ) ;
 int DropStmt ;
 int ERROR ;
 int RenameStmt ;
 int castNode (int ,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int nodeTag (int *) ;

const char *
DeparseTreeNode(Node *stmt)
{
 switch (nodeTag(stmt))
 {
  case 129:
  {
   return DeparseDropStmt(castNode(DropStmt, stmt));
  }

  case 131:
  {
   return DeparseCompositeTypeStmt(castNode(CompositeTypeStmt, stmt));
  }

  case 130:
  {
   return DeparseCreateEnumStmt(castNode(CreateEnumStmt, stmt));
  }

  case 132:
  {
   return DeparseAlterTableStmt(castNode(AlterTableStmt, stmt));
  }

  case 138:
  {
   return DeparseAlterEnumStmt(castNode(AlterEnumStmt, stmt));
  }

  case 137:
  {
   return DeparseAlterFunctionStmt(castNode(AlterFunctionStmt, stmt));
  }

  case 128:
  {
   return DeparseRenameStmt(castNode(RenameStmt, stmt));
  }

  case 135:
  {
   return DeparseAlterObjectSchemaStmt(castNode(AlterObjectSchemaStmt, stmt));
  }

  case 134:
  {
   return DeparseAlterOwnerStmt(castNode(AlterOwnerStmt, stmt));
  }

  case 136:
  {
   return DeparseAlterObjectDependsStmt(castNode(AlterObjectDependsStmt, stmt));
  }

  case 133:
  {
   return DeparseAlterRoleStmt(castNode(AlterRoleStmt, stmt));
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported statement for deparsing")));
  }
 }
}
