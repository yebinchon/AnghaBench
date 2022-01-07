
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int replace; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef TYPE_1__ CreateFunctionStmt ;


 int EnableDependencyCreation ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int IsObjectDistributed (int const*) ;
 scalar_t__ creating_extension ;

__attribute__((used)) static bool
ShouldPropagateCreateFunction(CreateFunctionStmt *stmt)
{
 const ObjectAddress *address = ((void*)0);

 if (creating_extension)
 {




  return 0;
 }

 if (!EnableDependencyCreation)
 {



  return 0;
 }

 if (!stmt->replace)
 {




  return 0;
 }





 address = GetObjectAddressFromParseTree((Node *) stmt, 1);
 if (!IsObjectDistributed(address))
 {

  return 0;
 }

 return 1;
}
