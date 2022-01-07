
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DistNodeRelationId () ;
 int DistPartitionRelationId () ;
 int DistTransactionRelationId () ;
 int ExclusiveLock ;
 int LockRelationOid (int ,int ) ;

__attribute__((used)) static void
BlockDistributedTransactions(void)
{
 LockRelationOid(DistNodeRelationId(), ExclusiveLock);
 LockRelationOid(DistPartitionRelationId(), ExclusiveLock);
 LockRelationOid(DistTransactionRelationId(), ExclusiveLock);
}
