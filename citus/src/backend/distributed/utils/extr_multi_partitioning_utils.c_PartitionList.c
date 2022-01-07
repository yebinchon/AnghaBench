
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_partdesc; } ;
struct TYPE_5__ {int nparts; int * oids; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int List ;


 int AccessShareLock ;
 int Assert (int ) ;
 int ERROR ;
 int * NIL ;
 int NoLock ;
 int PartitionedTable (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;
 int heap_close (TYPE_2__*,int ) ;
 TYPE_2__* heap_open (int ,int ) ;
 int * lappend_oid (int *,int ) ;

List *
PartitionList(Oid parentRelationId)
{
 Relation rel = heap_open(parentRelationId, AccessShareLock);
 List *partitionList = NIL;

 int partitionIndex = 0;
 int partitionCount = 0;

 if (!PartitionedTable(parentRelationId))
 {
  char *relationName = get_rel_name(parentRelationId);

  ereport(ERROR, (errmsg("\"%s\" is not a parent table", relationName)));
 }

 Assert(rel->rd_partdesc != ((void*)0));

 partitionCount = rel->rd_partdesc->nparts;
 for (partitionIndex = 0; partitionIndex < partitionCount; ++partitionIndex)
 {
  partitionList =
   lappend_oid(partitionList, rel->rd_partdesc->oids[partitionIndex]);
 }


 heap_close(rel, NoLock);

 return partitionList;
}
