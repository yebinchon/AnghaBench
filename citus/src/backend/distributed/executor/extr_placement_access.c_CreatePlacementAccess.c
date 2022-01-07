
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int accessType; int * placement; } ;
typedef int ShardPlacementAccessType ;
typedef TYPE_1__ ShardPlacementAccess ;
typedef int ShardPlacement ;


 scalar_t__ palloc0 (int) ;

ShardPlacementAccess *
CreatePlacementAccess(ShardPlacement *placement, ShardPlacementAccessType accessType)
{
 ShardPlacementAccess *placementAccess = ((void*)0);

 placementAccess = (ShardPlacementAccess *) palloc0(sizeof(ShardPlacementAccess));
 placementAccess->placement = placement;
 placementAccess->accessType = accessType;

 return placementAccess;
}
