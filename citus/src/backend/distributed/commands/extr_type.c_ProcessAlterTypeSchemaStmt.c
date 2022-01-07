
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectType; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef TYPE_1__ AlterObjectSchemaStmt ;


 int Assert (int) ;
 int EnsureDependenciesExistsOnAllNodes (int const*) ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 scalar_t__ OBJECT_TYPE ;
 int ShouldPropagateAlterType (int const*) ;

void
ProcessAlterTypeSchemaStmt(AlterObjectSchemaStmt *stmt, const char *queryString)
{
 const ObjectAddress *typeAddress = ((void*)0);

 Assert(stmt->objectType == OBJECT_TYPE);

 typeAddress = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterType(typeAddress))
 {
  return;
 }


 EnsureDependenciesExistsOnAllNodes(typeAddress);
}
