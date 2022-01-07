
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectType; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int AssertObjectTypeIsFunctional (int ) ;
 int EnsureDependenciesExistsOnAllNodes (int const*) ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int ShouldPropagateAlterFunction (int const*) ;

void
ProcessAlterFunctionSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 const ObjectAddress *address = ((void*)0);

 AssertObjectTypeIsFunctional(stmt->objectType);

 address = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterFunction(address))
 {
  return;
 }


 EnsureDependenciesExistsOnAllNodes(address);
}
