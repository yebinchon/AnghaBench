
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMMIT_PROTOCOL_BARE ;
 scalar_t__ MultiShardCommitProtocol ;
 scalar_t__ SavedMultiShardCommitProtocol ;

__attribute__((used)) static void
ResetShardPlacementTransactionState(void)
{
 if (MultiShardCommitProtocol == COMMIT_PROTOCOL_BARE)
 {
  MultiShardCommitProtocol = SavedMultiShardCommitProtocol;
  SavedMultiShardCommitProtocol = COMMIT_PROTOCOL_BARE;
 }
}
