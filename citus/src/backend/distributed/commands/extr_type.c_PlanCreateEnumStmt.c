
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;
typedef int CreateEnumStmt ;


 int ALL_WORKERS ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseCreateEnumStmt (int *) ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureCoordinator () ;
 int EnsureSequentialModeForTypeDDL () ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int QualifyTreeNode (int *) ;
 int ShouldPropagateTypeCreate () ;
 char* WrapCreateOrReplace (char const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanCreateEnumStmt(CreateEnumStmt *stmt, const char *queryString)
{
 const char *createEnumStmtSql = ((void*)0);
 List *commands = NIL;

 if (!ShouldPropagateTypeCreate())
 {
  return NIL;
 }





 EnsureCoordinator();


 QualifyTreeNode((Node *) stmt);


 createEnumStmtSql = DeparseCreateEnumStmt(stmt);
 createEnumStmtSql = WrapCreateOrReplace(createEnumStmtSql);





 EnsureSequentialModeForTypeDDL();


 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) createEnumStmtSql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
