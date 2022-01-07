
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int List ;


 int * BuildPlacementAccessList (int ,int *,int ) ;
 int PLACEMENT_ACCESS_DDL ;

__attribute__((used)) static List *
BuildPlacementDDLList(int32 groupId, List *relationShardList)
{
 return BuildPlacementAccessList(groupId, relationShardList, PLACEMENT_ACCESS_DDL);
}
