
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_11__ {int binary; } ;
struct TYPE_10__ {TYPE_2__* shardState; TYPE_1__* connectionState; } ;
struct TYPE_9__ {int shardId; } ;
struct TYPE_8__ {int * connection; } ;
typedef int MultiConnection ;
typedef TYPE_3__ CopyPlacementState ;
typedef TYPE_4__* CopyOutState ;


 int EndRemoteCopy (int ,int ) ;
 int SendCopyBinaryFooters (TYPE_4__*,int ,int ) ;
 int list_make1 (int *) ;

__attribute__((used)) static void
EndPlacementStateCopyCommand(CopyPlacementState *placementState,
        CopyOutState copyOutState)
{
 MultiConnection *connection = placementState->connectionState->connection;
 uint64 shardId = placementState->shardState->shardId;
 bool binaryCopy = copyOutState->binary;


 if (binaryCopy)
 {
  SendCopyBinaryFooters(copyOutState, shardId, list_make1(connection));
 }

 EndRemoteCopy(shardId, list_make1(connection));
}
