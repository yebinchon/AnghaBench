
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int Tuplestorestate ;
typedef int * TupleDesc ;
typedef int RowModifyLevel ;
typedef int List ;


 int ExecuteTaskListExtended (int ,int *,int *,int *,int,int) ;

uint64
ExecuteTaskList(RowModifyLevel modLevel, List *taskList, int targetPoolSize)
{
 TupleDesc tupleDescriptor = ((void*)0);
 Tuplestorestate *tupleStore = ((void*)0);
 bool hasReturning = 0;

 return ExecuteTaskListExtended(modLevel, taskList, tupleDescriptor,
           tupleStore, hasReturning, targetPoolSize);
}
