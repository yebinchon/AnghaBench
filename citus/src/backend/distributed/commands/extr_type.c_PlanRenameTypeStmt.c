
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RenameStmt ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;


 int ALL_WORKERS ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseTreeNode (int *) ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureSequentialModeForTypeDDL () ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int QualifyTreeNode (int *) ;
 int ShouldPropagateAlterType (int const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanRenameTypeStmt(RenameStmt *stmt, const char *queryString)
{
 const char *renameStmtSql = ((void*)0);
 const ObjectAddress *typeAddress = ((void*)0);
 List *commands = NIL;

 typeAddress = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterType(typeAddress))
 {
  return NIL;
 }


 QualifyTreeNode((Node *) stmt);


 renameStmtSql = DeparseTreeNode((Node *) stmt);


 EnsureSequentialModeForTypeDDL();

 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) renameStmtSql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
