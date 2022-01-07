
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objectType; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterObjectDependsStmt ;


 int AssertObjectTypeIsFunctional (int ) ;
 int ERROR ;
 int EnableDependencyCreation ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int IsObjectDistributed (int const*) ;
 int * NIL ;
 scalar_t__ creating_extension ;
 int ereport (int ,int ) ;
 int errdetail (char*,char const*) ;
 int errmsg (char*) ;
 char* getObjectIdentity (int const*) ;

List *
PlanAlterFunctionDependsStmt(AlterObjectDependsStmt *stmt, const char *queryString)
{
 const ObjectAddress *address = ((void*)0);
 const char *functionName = ((void*)0);

 AssertObjectTypeIsFunctional(stmt->objectType);

 if (creating_extension)
 {




  return NIL;
 }

 if (!EnableDependencyCreation)
 {



  return NIL;
 }

 address = GetObjectAddressFromParseTree((Node *) stmt, 1);
 if (!IsObjectDistributed(address))
 {
  return NIL;
 }







 functionName = getObjectIdentity(address);
 ereport(ERROR, (errmsg("distrtibuted functions are not allowed to depend on an "
         "extension"),
     errdetail("Function \"%s\" is already distributed. Functions from "
         "extensions are expected to be created on the workers by "
         "the extension they depend on.", functionName)));
}
