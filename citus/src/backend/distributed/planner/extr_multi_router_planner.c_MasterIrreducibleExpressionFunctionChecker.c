
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char PROVOLATILE_IMMUTABLE ;
 char PROVOLATILE_STABLE ;
 char PROVOLATILE_VOLATILE ;
 char func_volatile (int ) ;

__attribute__((used)) static bool
MasterIrreducibleExpressionFunctionChecker(Oid func_id, void *context)
{
 char volatileFlag = func_volatile(func_id);
 char *volatileContext = (char *) context;

 if (volatileFlag == PROVOLATILE_VOLATILE || *volatileContext == PROVOLATILE_VOLATILE)
 {
  *volatileContext = PROVOLATILE_VOLATILE;
 }
 else if (volatileFlag == PROVOLATILE_STABLE || *volatileContext == PROVOLATILE_STABLE)
 {
  *volatileContext = PROVOLATILE_STABLE;
 }
 else
 {
  *volatileContext = PROVOLATILE_IMMUTABLE;
 }

 return (volatileFlag == PROVOLATILE_VOLATILE);
}
