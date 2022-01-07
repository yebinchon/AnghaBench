
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int currentNodeIndex; } ;
typedef TYPE_1__ TaskExecution ;
struct TYPE_8__ {scalar_t__ taskType; int taskId; int jobId; TYPE_1__* taskExecution; int * taskPlacementList; int upstreamTaskId; int partitionId; } ;
typedef TYPE_2__ Task ;
struct TYPE_9__ {char* nodeName; int nodePort; } ;
typedef int * StringInfo ;
typedef TYPE_3__ ShardPlacement ;
typedef int List ;


 int Assert (int) ;
 int MAP_OUTPUT_FETCH_COMMAND ;
 scalar_t__ MAP_OUTPUT_FETCH_TASK ;
 scalar_t__ MAP_TASK ;
 int appendStringInfo (int *,int ,int ,int ,int ,int ,char*,int ) ;
 TYPE_3__* list_nth (int *,int ) ;
 int * makeStringInfo () ;

__attribute__((used)) static StringInfo
MapFetchTaskQueryString(Task *mapFetchTask, Task *mapTask)
{
 StringInfo mapFetchQueryString = ((void*)0);
 uint32 partitionFileId = mapFetchTask->partitionId;
 uint32 mergeTaskId = mapFetchTask->upstreamTaskId;


 List *mapTaskPlacementList = mapTask->taskPlacementList;
 TaskExecution *mapTaskExecution = mapTask->taskExecution;
 uint32 currentIndex = mapTaskExecution->currentNodeIndex;

 ShardPlacement *mapTaskPlacement = list_nth(mapTaskPlacementList, currentIndex);
 char *mapTaskNodeName = mapTaskPlacement->nodeName;
 uint32 mapTaskNodePort = mapTaskPlacement->nodePort;

 Assert(mapFetchTask->taskType == MAP_OUTPUT_FETCH_TASK);
 Assert(mapTask->taskType == MAP_TASK);

 mapFetchQueryString = makeStringInfo();
 appendStringInfo(mapFetchQueryString, MAP_OUTPUT_FETCH_COMMAND,
      mapTask->jobId, mapTask->taskId, partitionFileId,
      mergeTaskId,
      mapTaskNodeName, mapTaskNodePort);

 return mapFetchQueryString;
}
