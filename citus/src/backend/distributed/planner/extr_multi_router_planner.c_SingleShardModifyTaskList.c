
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint64 ;
struct TYPE_11__ {int replicationModel; int * relationShardList; int * taskPlacementList; void* jobId; void* anchorShardId; int queryString; } ;
typedef TYPE_1__ Task ;
struct TYPE_14__ {char partitionMethod; int replicationModel; } ;
struct TYPE_13__ {int relid; } ;
struct TYPE_12__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef int Query ;
typedef int Node ;
typedef int List ;
typedef TYPE_4__ DistTableCacheEntry ;


 TYPE_1__* CreateTask (int ) ;
 char DISTRIBUTE_BY_NONE ;
 TYPE_4__* DistributedTableCacheEntry (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ExtractRangeTableEntryWalker (int *,int **) ;
 TYPE_3__* GetUpdateOrDeleteRTE (int *) ;
 int MODIFY_TASK ;
 int * NIL ;
 scalar_t__ SelectsFromDistributedTable (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * list_make1 (TYPE_1__*) ;
 TYPE_2__* makeStringInfo () ;
 int pg_get_query_def (int *,TYPE_2__*) ;

__attribute__((used)) static List *
SingleShardModifyTaskList(Query *query, uint64 jobId, List *relationShardList,
        List *placementList, uint64 shardId)
{
 Task *task = CreateTask(MODIFY_TASK);
 StringInfo queryString = makeStringInfo();
 DistTableCacheEntry *modificationTableCacheEntry = ((void*)0);
 char modificationPartitionMethod = 0;
 List *rangeTableList = NIL;
 RangeTblEntry *updateOrDeleteRTE = ((void*)0);

 ExtractRangeTableEntryWalker((Node *) query, &rangeTableList);
 updateOrDeleteRTE = GetUpdateOrDeleteRTE(query);

 modificationTableCacheEntry = DistributedTableCacheEntry(updateOrDeleteRTE->relid);
 modificationPartitionMethod = modificationTableCacheEntry->partitionMethod;

 if (modificationPartitionMethod == DISTRIBUTE_BY_NONE &&
  SelectsFromDistributedTable(rangeTableList, query))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot perform select on a distributed table "
          "and modify a reference table")));
 }

 pg_get_query_def(query, queryString);

 task->queryString = queryString->data;
 task->anchorShardId = shardId;
 task->jobId = jobId;
 task->taskPlacementList = placementList;
 task->relationShardList = relationShardList;
 task->replicationModel = modificationTableCacheEntry->replicationModel;

 return list_make1(task);
}
