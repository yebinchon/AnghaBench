
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int int32 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int UPSERT_PLACEMENT ;
 int appendStringInfo (TYPE_1__*,int ,int ,int,int ,int ,int ) ;
 TYPE_1__* makeStringInfo () ;

char *
PlacementUpsertCommand(uint64 shardId, uint64 placementId, int shardState,
        uint64 shardLength, int32 groupId)
{
 StringInfo command = makeStringInfo();

 appendStringInfo(command, UPSERT_PLACEMENT, shardId, shardState, shardLength,
      groupId, placementId);

 return command->data;
}
