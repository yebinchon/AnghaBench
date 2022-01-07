
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;


 int CreateEmptyShard (char*) ;
 int RemoteCreateEmptyShard (char*) ;
 int * masterConnection ;

__attribute__((used)) static int64
MasterCreateEmptyShard(char *relationName)
{
 int64 shardId = 0;
 if (masterConnection == ((void*)0))
 {
  shardId = CreateEmptyShard(relationName);
 }
 else
 {
  shardId = RemoteCreateEmptyShard(relationName);
 }

 return shardId;
}
