
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {int relispartition; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int NoLock ;
 int heap_close (TYPE_2__*,int ) ;
 TYPE_2__* try_relation_open (int ,int ) ;

bool
PartitionTable(Oid relationId)
{
 Relation rel = try_relation_open(relationId, AccessShareLock);
 bool partitionTable = 0;


 if (rel == ((void*)0))
 {
  return 0;
 }

 partitionTable = rel->rd_rel->relispartition;


 heap_close(rel, NoLock);

 return partitionTable;
}
