
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objtype; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterFunctionStmt ;


 int ALL_WORKERS ;
 int AssertObjectTypeIsFunctional (int ) ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseTreeNode (int *) ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureCoordinator () ;
 int EnsureSequentialModeForFunctionDDL () ;
 int ErrorIfUnsupportedAlterFunctionStmt (TYPE_1__*) ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int QualifyTreeNode (int *) ;
 int ShouldPropagateAlterFunction (int const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanAlterFunctionStmt(AlterFunctionStmt *stmt, const char *queryString)
{
 const char *sql = ((void*)0);
 const ObjectAddress *address = ((void*)0);
 List *commands = NIL;

 AssertObjectTypeIsFunctional(stmt->objtype);

 address = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterFunction(address))
 {
  return NIL;
 }

 EnsureCoordinator();
 ErrorIfUnsupportedAlterFunctionStmt(stmt);
 EnsureSequentialModeForFunctionDDL();
 QualifyTreeNode((Node *) stmt);
 sql = DeparseTreeNode((Node *) stmt);

 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) sql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
