
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tuplesSent; } ;
struct TYPE_6__ {int es_processed; int es_param_list_info; } ;
typedef int Query ;
typedef int ParamListInfo ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ EState ;
typedef int DestReceiver ;
typedef TYPE_2__ CitusCopyDestReceiver ;


 int * BuildColumnNameListFromTargetList (int ,int *) ;
 TYPE_2__* CreateCitusCopyDestReceiver (int ,int *,int,TYPE_1__*,int,int *) ;
 char DISTRIBUTE_BY_NONE ;
 int ExecuteQueryIntoDestReceiver (int *,int ,int *) ;
 int * NIL ;
 int PartitionColumnIndexFromColumnList (int ,int *) ;
 char PartitionMethod (int ) ;
 int XACT_MODIFICATION_DATA ;
 int XactModificationLevel ;
 int * copyObject (int *) ;

__attribute__((used)) static void
ExecuteSelectIntoRelation(Oid targetRelationId, List *insertTargetList,
        Query *selectQuery, EState *executorState)
{
 ParamListInfo paramListInfo = executorState->es_param_list_info;
 int partitionColumnIndex = -1;
 List *columnNameList = NIL;
 bool stopOnFailure = 0;
 char partitionMethod = 0;
 CitusCopyDestReceiver *copyDest = ((void*)0);
 Query *queryCopy = ((void*)0);

 partitionMethod = PartitionMethod(targetRelationId);
 if (partitionMethod == DISTRIBUTE_BY_NONE)
 {
  stopOnFailure = 1;
 }


 columnNameList = BuildColumnNameListFromTargetList(targetRelationId,
                insertTargetList);
 partitionColumnIndex = PartitionColumnIndexFromColumnList(targetRelationId,
                 columnNameList);


 copyDest = CreateCitusCopyDestReceiver(targetRelationId, columnNameList,
             partitionColumnIndex, executorState,
             stopOnFailure, ((void*)0));






 queryCopy = copyObject(selectQuery);

 ExecuteQueryIntoDestReceiver(queryCopy, paramListInfo, (DestReceiver *) copyDest);

 executorState->es_processed = copyDest->tuplesSent;

 XactModificationLevel = XACT_MODIFICATION_DATA;
}
