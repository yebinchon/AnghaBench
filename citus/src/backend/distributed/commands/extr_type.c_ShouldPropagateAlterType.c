
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;


 int EnableDependencyCreation ;
 int IsObjectDistributed (int const*) ;
 scalar_t__ creating_extension ;

__attribute__((used)) static bool
ShouldPropagateAlterType(const ObjectAddress *address)
{
 if (creating_extension)
 {




  return 0;
 }

 if (!EnableDependencyCreation)
 {



  return 0;
 }

 if (!IsObjectDistributed(address))
 {

  return 0;
 }

 return 1;
}
