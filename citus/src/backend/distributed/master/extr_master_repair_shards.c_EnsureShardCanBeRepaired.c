
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_3__ {scalar_t__ shardState; } ;
typedef TYPE_1__ ShardPlacement ;
typedef int List ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ FILE_FINALIZED ;
 scalar_t__ FILE_INACTIVE ;
 TYPE_1__* SearchShardPlacementInList (int *,char*,int ,int) ;
 int * ShardPlacementList (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
EnsureShardCanBeRepaired(int64 shardId, char *sourceNodeName, int32 sourceNodePort,
       char *targetNodeName, int32 targetNodePort)
{
 List *shardPlacementList = ShardPlacementList(shardId);
 ShardPlacement *sourcePlacement = ((void*)0);
 ShardPlacement *targetPlacement = ((void*)0);
 bool missingSourceOk = 0;
 bool missingTargetOk = 0;

 sourcePlacement = SearchShardPlacementInList(shardPlacementList, sourceNodeName,
             sourceNodePort, missingSourceOk);
 if (sourcePlacement->shardState != FILE_FINALIZED)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("source placement must be in finalized state")));
 }

 targetPlacement = SearchShardPlacementInList(shardPlacementList, targetNodeName,
             targetNodePort, missingTargetOk);
 if (targetPlacement->shardState != FILE_INACTIVE)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("target placement must be in inactive state")));
 }
}
