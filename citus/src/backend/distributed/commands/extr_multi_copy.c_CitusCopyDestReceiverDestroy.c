
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ connectionStateHash; scalar_t__ shardStateHash; struct TYPE_3__* columnCoercionPaths; struct TYPE_3__* columnOutputFunctions; struct TYPE_3__* copyOutState; } ;
typedef int DestReceiver ;
typedef TYPE_1__ CitusCopyDestReceiver ;


 int hash_destroy (scalar_t__) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
CitusCopyDestReceiverDestroy(DestReceiver *destReceiver)
{
 CitusCopyDestReceiver *copyDest = (CitusCopyDestReceiver *) destReceiver;

 if (copyDest->copyOutState)
 {
  pfree(copyDest->copyOutState);
 }

 if (copyDest->columnOutputFunctions)
 {
  pfree(copyDest->columnOutputFunctions);
 }

 if (copyDest->columnCoercionPaths)
 {
  pfree(copyDest->columnCoercionPaths);
 }

 if (copyDest->shardStateHash)
 {
  hash_destroy(copyDest->shardStateHash);
 }

 if (copyDest->connectionStateHash)
 {
  hash_destroy(copyDest->connectionStateHash);
 }

 pfree(copyDest);
}
