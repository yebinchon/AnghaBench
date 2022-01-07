
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectType; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int ALL_WORKERS ;
 int Assert (int) ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseTreeNode (int *) ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureCoordinator () ;
 int EnsureSequentialModeForTypeDDL () ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 scalar_t__ OBJECT_TYPE ;
 int QualifyTreeNode (int *) ;
 int ShouldPropagateAlterType (int const*) ;
 int * list_make3 (int ,void*,int ) ;

List *
PlanAlterTypeSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 const char *sql = ((void*)0);
 const ObjectAddress *typeAddress = ((void*)0);
 List *commands = NIL;

 Assert(stmt->objectType == OBJECT_TYPE);

 typeAddress = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterType(typeAddress))
 {
  return NIL;
 }

 EnsureCoordinator();

 QualifyTreeNode((Node *) stmt);
 sql = DeparseTreeNode((Node *) stmt);

 EnsureSequentialModeForTypeDDL();

 commands = list_make3(DISABLE_DDL_PROPAGATION,
        (void *) sql,
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
