
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int NoLock ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int heap_close (TYPE_2__*,int ) ;
 TYPE_2__* try_relation_open_nolock (int ) ;

bool
PartitionedTableNoLock(Oid relationId)
{
 Relation rel = try_relation_open_nolock(relationId);
 bool partitionedTable = 0;


 if (rel == ((void*)0))
 {
  return 0;
 }

 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
 {
  partitionedTable = 1;
 }


 heap_close(rel, NoLock);

 return partitionedTable;
}
