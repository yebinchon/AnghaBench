
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int CustomScanState ;


 int * CoordinatorInsertSelectExecScanInternal (int *) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int insertSelectExecutorLevel ;

TupleTableSlot *
CoordinatorInsertSelectExecScan(CustomScanState *node)
{
 TupleTableSlot *result = ((void*)0);
 insertSelectExecutorLevel++;

 PG_TRY();
 {
  result = CoordinatorInsertSelectExecScanInternal(node);
 }
 PG_CATCH();
 {
  insertSelectExecutorLevel--;
  PG_RE_THROW();
 }
 PG_END_TRY();

 insertSelectExecutorLevel--;
 return result;
}
