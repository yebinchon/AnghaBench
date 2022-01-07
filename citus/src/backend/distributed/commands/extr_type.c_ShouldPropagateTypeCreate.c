
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnableCreateTypePropagation ;
 int EnableDependencyCreation ;
 scalar_t__ IsMultiStatementTransaction () ;
 scalar_t__ creating_extension ;

__attribute__((used)) static bool
ShouldPropagateTypeCreate()
{
 if (!EnableDependencyCreation)
 {



  return 0;
 }

 if (!EnableCreateTypePropagation)
 {



  return 0;
 }

 if (creating_extension)
 {




  return 0;
 }






 if (IsMultiStatementTransaction())
 {
  return 0;
 }

 return 1;
}
