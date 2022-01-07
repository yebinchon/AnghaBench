
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;
typedef int CompositeTypeStmt ;


 int ALL_WORKERS ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseCompositeTypeStmt (int *) ;
 int DistNodeRelationId () ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureCoordinator () ;
 int EnsureSequentialModeForTypeDDL () ;
 int LockRelationOid (int ,int ) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int QualifyTreeNode (int *) ;
 int RowShareLock ;
 int ShouldPropagateTypeCreate () ;
 char* WrapCreateOrReplace (char const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanCompositeTypeStmt(CompositeTypeStmt *stmt, const char *queryString)
{
 const char *compositeTypeStmtSql = ((void*)0);
 List *commands = NIL;

 if (!ShouldPropagateTypeCreate())
 {
  return NIL;
 }





 EnsureCoordinator();
 LockRelationOid(DistNodeRelationId(), RowShareLock);


 QualifyTreeNode((Node *) stmt);
 compositeTypeStmtSql = DeparseCompositeTypeStmt(stmt);
 compositeTypeStmtSql = WrapCreateOrReplace(compositeTypeStmtSql);





 EnsureSequentialModeForTypeDDL();

 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) compositeTypeStmtSql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
