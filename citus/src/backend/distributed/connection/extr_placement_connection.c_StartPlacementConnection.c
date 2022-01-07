
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int accessType; int * placement; } ;
typedef TYPE_1__ ShardPlacementAccess ;
typedef int ShardPlacement ;
typedef int MultiConnection ;


 int FOR_DDL ;
 int FOR_DML ;
 int PLACEMENT_ACCESS_DDL ;
 int PLACEMENT_ACCESS_DML ;
 int PLACEMENT_ACCESS_SELECT ;
 int * StartPlacementListConnection (int,int ,char const*) ;
 int list_make1 (TYPE_1__*) ;
 scalar_t__ palloc0 (int) ;

MultiConnection *
StartPlacementConnection(uint32 flags, ShardPlacement *placement, const char *userName)
{
 ShardPlacementAccess *placementAccess =
  (ShardPlacementAccess *) palloc0(sizeof(ShardPlacementAccess));

 placementAccess->placement = placement;

 if (flags & FOR_DDL)
 {
  placementAccess->accessType = PLACEMENT_ACCESS_DDL;
 }
 else if (flags & FOR_DML)
 {
  placementAccess->accessType = PLACEMENT_ACCESS_DML;
 }
 else
 {
  placementAccess->accessType = PLACEMENT_ACCESS_SELECT;
 }

 return StartPlacementListConnection(flags, list_make1(placementAccess), userName);
}
