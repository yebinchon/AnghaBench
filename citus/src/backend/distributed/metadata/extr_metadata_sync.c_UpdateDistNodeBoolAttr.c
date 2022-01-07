
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int replace ;
typedef int int32 ;
typedef int * TupleDesc ;
struct TYPE_7__ {int t_self; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int * Relation ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_node_nodename ;
 int Anum_pg_dist_node_nodeport ;
 int BTEqualStrategyNumber ;
 int BoolGetDatum (int) ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleUpdate (int *,int *,TYPE_1__*) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DistNodeRelationId () ;
 int ERROR ;
 int F_INT4EQ ;
 int F_TEXTEQ ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int Natts_pg_dist_node ;
 int NoLock ;
 int * RelationGetDescr (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,int ) ;
 int heap_close (int *,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int *,int *,int*,int*) ;
 int * heap_open (int ,int ) ;
 int memset (int*,int ,int) ;
 int * systable_beginscan (int *,int ,int const,int *,int,int *) ;
 int systable_endscan (int *) ;
 TYPE_1__* systable_getnext (int *) ;

__attribute__((used)) static void
UpdateDistNodeBoolAttr(char *nodeName, int32 nodePort, int attrNum, bool value)
{
 const bool indexOK = 0;

 Relation pgDistNode = ((void*)0);
 TupleDesc tupleDescriptor = ((void*)0);
 ScanKeyData scanKey[2];
 SysScanDesc scanDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 Datum values[Natts_pg_dist_node];
 bool isnull[Natts_pg_dist_node];
 bool replace[Natts_pg_dist_node];

 pgDistNode = heap_open(DistNodeRelationId(), RowExclusiveLock);
 tupleDescriptor = RelationGetDescr(pgDistNode);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_node_nodename,
    BTEqualStrategyNumber, F_TEXTEQ, CStringGetTextDatum(nodeName));
 ScanKeyInit(&scanKey[1], Anum_pg_dist_node_nodeport,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(nodePort));

 scanDescriptor = systable_beginscan(pgDistNode, InvalidOid, indexOK,
          ((void*)0), 2, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (!HeapTupleIsValid(heapTuple))
 {
  ereport(ERROR, (errmsg("could not find valid entry for node \"%s:%d\"",
          nodeName, nodePort)));
 }

 memset(replace, 0, sizeof(replace));

 values[attrNum - 1] = BoolGetDatum(value);
 isnull[attrNum - 1] = 0;
 replace[attrNum - 1] = 1;

 heapTuple = heap_modify_tuple(heapTuple, tupleDescriptor, values, isnull, replace);

 CatalogTupleUpdate(pgDistNode, &heapTuple->t_self, heapTuple);

 CitusInvalidateRelcacheByRelid(DistNodeRelationId());

 CommandCounterIncrement();

 systable_endscan(scanDescriptor);
 heap_close(pgDistNode, NoLock);
}
