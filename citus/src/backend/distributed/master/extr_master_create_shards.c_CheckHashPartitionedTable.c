
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char DISTRIBUTE_BY_HASH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 char PartitionMethod (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;

void
CheckHashPartitionedTable(Oid distributedTableId)
{
 char partitionType = PartitionMethod(distributedTableId);
 if (partitionType != DISTRIBUTE_BY_HASH)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("unsupported table partition type: %c", partitionType)));
 }
}
