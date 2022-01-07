
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;
typedef int Node ;
typedef int CreateEnumStmt ;


 int EnsureDependenciesExistsOnAllNodes (int const*) ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int MarkObjectDistributed (int const*) ;
 int ShouldPropagateTypeCreate () ;

void
ProcessCreateEnumStmt(CreateEnumStmt *stmt, const char *queryString)
{
 const ObjectAddress *typeAddress = ((void*)0);

 if (!ShouldPropagateTypeCreate())
 {
  return;
 }


 typeAddress = GetObjectAddressFromParseTree((Node *) stmt, 0);
 EnsureDependenciesExistsOnAllNodes(typeAddress);






 MarkObjectDistributed(typeAddress);
}
