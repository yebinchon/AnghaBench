
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint64 ;
struct TYPE_7__ {int * relationRowLockList; int * relationShardList; int * taskPlacementList; void* jobId; void* anchorShardId; int queryString; } ;
typedef TYPE_1__ Task ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef int Query ;
typedef int Node ;
typedef int List ;


 TYPE_1__* CreateTask (int ) ;
 int * NIL ;
 int ROUTER_TASK ;
 int RowLocksOnRelations (int *,int **) ;
 int * list_make1 (TYPE_1__*) ;
 TYPE_2__* makeStringInfo () ;
 int pg_get_query_def (int *,TYPE_2__*) ;

__attribute__((used)) static List *
SingleShardSelectTaskList(Query *query, uint64 jobId, List *relationShardList,
        List *placementList,
        uint64 shardId)
{
 Task *task = CreateTask(ROUTER_TASK);
 StringInfo queryString = makeStringInfo();
 List *relationRowLockList = NIL;

 RowLocksOnRelations((Node *) query, &relationRowLockList);
 pg_get_query_def(query, queryString);

 task->queryString = queryString->data;
 task->anchorShardId = shardId;
 task->jobId = jobId;
 task->taskPlacementList = placementList;
 task->relationShardList = relationShardList;
 task->relationRowLockList = relationRowLockList;

 return list_make1(task);
}
