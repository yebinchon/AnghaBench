
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32 ;
struct TYPE_4__ {void* varnoold; void* varno; } ;
typedef TYPE_1__ Var ;
typedef int Oid ;


 TYPE_1__* DistPartitionKey (int ) ;

Var *
PartitionColumn(Oid relationId, uint32 rangeTableId)
{
 Var *partitionKey = DistPartitionKey(relationId);
 Var *partitionColumn = ((void*)0);


 if (partitionKey == ((void*)0))
 {
  return partitionColumn;
 }

 partitionColumn = partitionKey;
 partitionColumn->varno = rangeTableId;
 partitionColumn->varnoold = rangeTableId;

 return partitionColumn;
}
