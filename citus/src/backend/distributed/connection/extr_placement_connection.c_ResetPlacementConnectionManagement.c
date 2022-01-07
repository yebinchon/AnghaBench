
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ColocatedPlacementsHash ;
 int ConnectionPlacementHash ;
 int ConnectionShardHash ;
 int ResetRelationAccessHash () ;
 int hash_delete_all (int ) ;

void
ResetPlacementConnectionManagement(void)
{

 hash_delete_all(ConnectionPlacementHash);
 hash_delete_all(ConnectionShardHash);
 hash_delete_all(ColocatedPlacementsHash);
 ResetRelationAccessHash();





}
