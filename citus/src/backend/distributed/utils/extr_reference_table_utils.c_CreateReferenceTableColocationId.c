
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int Oid ;


 scalar_t__ ColocationId (int,int,int ) ;
 scalar_t__ CreateColocationGroup (int,int,int ) ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int InvalidOid ;

uint32
CreateReferenceTableColocationId()
{
 uint32 colocationId = INVALID_COLOCATION_ID;
 int shardCount = 1;
 Oid distributionColumnType = InvalidOid;





 int replicationFactor = -1;


 colocationId = ColocationId(shardCount, replicationFactor, distributionColumnType);
 if (colocationId == INVALID_COLOCATION_ID)
 {
  colocationId = CreateColocationGroup(shardCount, replicationFactor,
            distributionColumnType);
 }

 return colocationId;
}
