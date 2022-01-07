
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
 int AlterTableStmt ;
 int CompositeTypeStmt ;
 int CreateEnumStmt ;
 int QualifyAlterEnumStmt (int ) ;
 int QualifyAlterFunctionStmt (int ) ;
 int QualifyAlterObjectDependsStmt (int ) ;
 int QualifyAlterObjectSchemaStmt (int ) ;
 int QualifyAlterOwnerStmt (int ) ;
 int QualifyAlterTableStmt (int ) ;
 int QualifyCompositeTypeStmt (int ) ;
 int QualifyCreateEnumStmt (int ) ;
 int QualifyRenameStmt (int ) ;
 int RenameStmt ;
 int castNode (int ,int *) ;
 int nodeTag (int *) ;

void
QualifyTreeNode(Node *stmt)
{
 switch (nodeTag(stmt))
 {
  case 128:
  {
   QualifyRenameStmt(castNode(RenameStmt, stmt));
   return;
  }

  case 136:
  {
   QualifyAlterEnumStmt(castNode(AlterEnumStmt, stmt));
   return;
  }

  case 131:
  {
   QualifyAlterTableStmt(castNode(AlterTableStmt, stmt));
   return;
  }

  case 130:
  {
   QualifyCompositeTypeStmt(castNode(CompositeTypeStmt, stmt));
   return;
  }

  case 129:
  {
   QualifyCreateEnumStmt(castNode(CreateEnumStmt, stmt));
   return;
  }

  case 133:
  {
   QualifyAlterObjectSchemaStmt(castNode(AlterObjectSchemaStmt, stmt));
   return;
  }

  case 132:
  {
   QualifyAlterOwnerStmt(castNode(AlterOwnerStmt, stmt));
   return;
  }

  case 135:
  {
   QualifyAlterFunctionStmt(castNode(AlterFunctionStmt, stmt));
   return;
  }

  case 134:
  {
   QualifyAlterObjectDependsStmt(castNode(AlterObjectDependsStmt, stmt));
   return;
  }

  default:
  {

   break;
  }
 }
}
