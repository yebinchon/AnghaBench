
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int RemoteUpdateShardStatistics (int ) ;
 int UpdateShardStatistics (int ) ;
 int * masterConnection ;

__attribute__((used)) static void
MasterUpdateShardStatistics(uint64 shardId)
{
 if (masterConnection == ((void*)0))
 {
  UpdateShardStatistics(shardId);
 }
 else
 {
  RemoteUpdateShardStatistics(shardId);
 }
}
