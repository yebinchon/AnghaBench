
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 int get_partition_parent (int ) ;

Oid
PartitionParentOid(Oid partitionOid)
{
 Oid partitionParentOid = InvalidOid;

 partitionParentOid = get_partition_parent(partitionOid);

 return partitionParentOid;
}
