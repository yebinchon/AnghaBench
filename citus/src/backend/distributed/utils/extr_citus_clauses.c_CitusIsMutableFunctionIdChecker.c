
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ CitusReadIntermediateResultFuncId () ;
 scalar_t__ PROVOLATILE_IMMUTABLE ;
 scalar_t__ func_volatile (scalar_t__) ;

__attribute__((used)) static bool
CitusIsMutableFunctionIdChecker(Oid func_id, void *context)
{
 if (func_id == CitusReadIntermediateResultFuncId())
 {
  return 0;
 }
 else
 {
  return (func_volatile(func_id) != PROVOLATILE_IMMUTABLE);
 }
}
