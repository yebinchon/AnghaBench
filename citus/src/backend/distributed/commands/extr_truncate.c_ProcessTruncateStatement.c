
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TruncateStmt ;


 int EnsurePartitionTableNotReplicatedForTruncate (int *) ;
 int ErrorIfUnsupportedTruncateStmt (int *) ;
 int ExecuteTruncateStmtSequentialIfNecessary (int *) ;
 int LockTruncatedRelationMetadataInWorkers (int *) ;

void
ProcessTruncateStatement(TruncateStmt *truncateStatement)
{
 ErrorIfUnsupportedTruncateStmt(truncateStatement);
 EnsurePartitionTableNotReplicatedForTruncate(truncateStatement);
 ExecuteTruncateStmtSequentialIfNecessary(truncateStatement);
 LockTruncatedRelationMetadataInWorkers(truncateStatement);
}
