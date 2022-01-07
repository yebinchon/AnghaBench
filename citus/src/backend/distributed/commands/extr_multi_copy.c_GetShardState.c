
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int HTAB ;
typedef int CopyShardState ;


 int HASH_ENTER ;
 int InitializeCopyShardState (int *,int *,int ,int) ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;

__attribute__((used)) static CopyShardState *
GetShardState(uint64 shardId, HTAB *shardStateHash,
     HTAB *connectionStateHash, bool stopOnFailure, bool *found)
{
 CopyShardState *shardState = ((void*)0);

 shardState = (CopyShardState *) hash_search(shardStateHash, &shardId,
            HASH_ENTER, found);
 if (!*found)
 {
  InitializeCopyShardState(shardState, connectionStateHash,
         shardId, stopOnFailure);
 }

 return shardState;
}
