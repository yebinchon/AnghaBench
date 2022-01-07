
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int StringInfo ;


 int GetUserId () ;
 int PartitionFilename (int ,int ) ;
 int appendStringInfo (int ,char*,int ) ;

__attribute__((used)) static StringInfo
UserPartitionFilename(StringInfo directoryName, uint32 partitionId)
{
 StringInfo partitionFilename = PartitionFilename(directoryName, partitionId);

 appendStringInfo(partitionFilename, ".%u", GetUserId());

 return partitionFilename;
}
