
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef int CreateFunctionStmt ;


 int ALL_WORKERS ;
 int DISABLE_DDL_PROPAGATION ;
 int ENABLE_DDL_PROPAGATION ;
 int EnsureDependenciesExistsOnAllNodes (TYPE_1__ const*) ;
 int GetFunctionAlterOwnerCommand (int ) ;
 int GetFunctionDDLCommand (int ,int) ;
 TYPE_1__* GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int * NodeDDLTaskList (int ,int *) ;
 int ShouldPropagateCreateFunction (int *) ;
 int * list_make4 (int ,int ,int ,int ) ;

List *
ProcessCreateFunctionStmt(CreateFunctionStmt *stmt, const char *queryString)
{
 const ObjectAddress *address = ((void*)0);
 List *commands = NIL;

 if (!ShouldPropagateCreateFunction(stmt))
 {
  return NIL;
 }

 address = GetObjectAddressFromParseTree((Node *) stmt, 0);
 EnsureDependenciesExistsOnAllNodes(address);

 commands = list_make4(DISABLE_DDL_PROPAGATION,
        GetFunctionDDLCommand(address->objectId, 1),
        GetFunctionAlterOwnerCommand(address->objectId),
        ENABLE_DDL_PROPAGATION);

 return NodeDDLTaskList(ALL_WORKERS, commands);
}
