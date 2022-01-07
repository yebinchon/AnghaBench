
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int * ConnectionPlacementHash ;
 scalar_t__ hash_get_num_entries (int *) ;

bool
AnyConnectionAccessedPlacements(void)
{

 Assert(ConnectionPlacementHash != ((void*)0));

 return hash_get_num_entries(ConnectionPlacementHash) > 0;
}
