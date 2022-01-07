
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
typedef int TaskTracker ;
struct TYPE_7__ {int currentNodeIndex; } ;
typedef TYPE_1__ TaskExecution ;
struct TYPE_8__ {int * taskPlacementList; } ;
typedef TYPE_2__ Task ;
struct TYPE_9__ {char* nodeName; int nodePort; } ;
typedef TYPE_3__ ShardPlacement ;
typedef int List ;
typedef int HTAB ;


 int Assert (int ) ;
 int * TrackerHashLookup (int *,char*,int ) ;
 TYPE_3__* list_nth (int *,int ) ;

__attribute__((used)) static TaskTracker *
ResolveTaskTracker(HTAB *trackerHash, Task *task, TaskExecution *taskExecution)
{
 List *taskPlacementList = task->taskPlacementList;
 uint32 currentIndex = taskExecution->currentNodeIndex;

 ShardPlacement *taskPlacement = list_nth(taskPlacementList, currentIndex);
 char *nodeName = taskPlacement->nodeName;
 uint32 nodePort = taskPlacement->nodePort;


 TaskTracker *taskTracker = TrackerHashLookup(trackerHash, nodeName, nodePort);
 Assert(taskTracker != ((void*)0));

 return taskTracker;
}
