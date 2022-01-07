
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef int AlterEnumStmt ;


 int ALL_WORKERS ;
 scalar_t__ AlterEnumIsAddValue (int *) ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseTreeNode (int *) ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureCoordinator () ;
 int EnsureSequentialModeForTypeDDL () ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int QualifyTreeNode (int *) ;
 int ShouldPropagateAlterType (int const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanAlterEnumStmt(AlterEnumStmt *stmt, const char *queryString)
{
 const char *alterEnumStmtSql = ((void*)0);
 const ObjectAddress *typeAddress = ((void*)0);
 List *commands = NIL;

 typeAddress = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterType(typeAddress))
 {
  return NIL;
 }







 EnsureSequentialModeForTypeDDL();





 EnsureCoordinator();

 QualifyTreeNode((Node *) stmt);
 alterEnumStmtSql = DeparseTreeNode((Node *) stmt);







 if (AlterEnumIsAddValue(stmt))
 {




  return NIL;
 }


 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) alterEnumStmtSql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
