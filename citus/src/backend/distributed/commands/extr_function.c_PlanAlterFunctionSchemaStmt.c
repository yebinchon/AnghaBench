
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectType; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int ALL_WORKERS ;
 int AssertObjectTypeIsFunctional (int ) ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseTreeNode (int *) ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureCoordinator () ;
 int EnsureSequentialModeForFunctionDDL () ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int QualifyTreeNode (int *) ;
 int ShouldPropagateAlterFunction (int const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanAlterFunctionSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 const char *sql = ((void*)0);
 const ObjectAddress *address = ((void*)0);
 List *commands = NIL;

 AssertObjectTypeIsFunctional(stmt->objectType);

 address = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterFunction(address))
 {
  return NIL;
 }

 EnsureCoordinator();
 EnsureSequentialModeForFunctionDDL();
 QualifyTreeNode((Node *) stmt);
 sql = DeparseTreeNode((Node *) stmt);

 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) sql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
