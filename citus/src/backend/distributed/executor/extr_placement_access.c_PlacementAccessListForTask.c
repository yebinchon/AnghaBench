
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ taskType; int * relationShardList; } ;
typedef TYPE_1__ Task ;
struct TYPE_7__ {int groupId; } ;
typedef scalar_t__ ShardPlacementAccessType ;
typedef int ShardPlacementAccess ;
typedef TYPE_2__ ShardPlacement ;
typedef int List ;


 int * BuildPlacementDDLList (int ,int *) ;
 int * BuildPlacementSelectList (int ,int *) ;
 int * CreatePlacementAccess (TYPE_2__*,scalar_t__) ;
 scalar_t__ DDL_TASK ;
 scalar_t__ MODIFY_TASK ;
 int * NIL ;
 scalar_t__ PLACEMENT_ACCESS_DDL ;
 scalar_t__ PLACEMENT_ACCESS_DML ;
 scalar_t__ PLACEMENT_ACCESS_SELECT ;
 scalar_t__ VACUUM_ANALYZE_TASK ;
 int * lappend (int *,int *) ;
 int * list_concat (int *,int *) ;

List *
PlacementAccessListForTask(Task *task, ShardPlacement *taskPlacement)
{
 List *placementAccessList = NIL;
 List *relationShardList = task->relationShardList;
 bool addAnchorAccess = 0;
 ShardPlacementAccessType accessType = PLACEMENT_ACCESS_SELECT;

 if (task->taskType == MODIFY_TASK)
 {

  addAnchorAccess = 1;
  accessType = PLACEMENT_ACCESS_DML;
 }
 else if (task->taskType == DDL_TASK || task->taskType == VACUUM_ANALYZE_TASK)
 {

  addAnchorAccess = 1;
  accessType = PLACEMENT_ACCESS_DDL;
 }
 else if (relationShardList == NIL)
 {

  addAnchorAccess = 1;
  accessType = PLACEMENT_ACCESS_SELECT;
 }

 if (addAnchorAccess)
 {
  ShardPlacementAccess *placementAccess =
   CreatePlacementAccess(taskPlacement, accessType);

  placementAccessList = lappend(placementAccessList, placementAccess);
 }





 if (accessType == PLACEMENT_ACCESS_DDL)
 {




  List *relationShardAccessList =
   BuildPlacementDDLList(taskPlacement->groupId, relationShardList);

  placementAccessList = list_concat(placementAccessList, relationShardAccessList);
 }
 else
 {
  List *relationShardAccessList =
   BuildPlacementSelectList(taskPlacement->groupId, relationShardList);

  placementAccessList = list_concat(placementAccessList, relationShardAccessList);
 }

 return placementAccessList;
}
