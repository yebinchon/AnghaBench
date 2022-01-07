
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DoBlockLevel ;
 scalar_t__ FunctionCallLevel ;
 scalar_t__ FunctionOpensTransactionBlock ;
 scalar_t__ IsTransactionBlock () ;
 scalar_t__ StoredProcedureLevel ;

bool
IsMultiStatementTransaction(void)
{
 if (IsTransactionBlock())
 {

  return 1;
 }
 else if (DoBlockLevel > 0)
 {

  return 1;
 }
 else if (StoredProcedureLevel > 0)
 {

  return 1;
 }
 else if (FunctionCallLevel > 0 && FunctionOpensTransactionBlock)
 {

  return 1;
 }
 else
 {
  return 0;
 }
}
