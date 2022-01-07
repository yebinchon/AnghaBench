
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int * HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_dist_node_nodename ;
 int Anum_pg_dist_node_nodeport ;
 int BTEqualStrategyNumber ;
 int CStringGetTextDatum (char const*) ;
 int DistNodeRelationId () ;
 int F_INT4EQ ;
 int F_TEXTEQ ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int NoLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int ,int ) ;
 int * heap_copytuple (int *) ;
 int heap_open (int ,int ) ;
 int * systable_beginscan (int ,int ,int const,int *,int const,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

__attribute__((used)) static HeapTuple
GetNodeTuple(const char *nodeName, int32 nodePort)
{
 Relation pgDistNode = heap_open(DistNodeRelationId(), AccessShareLock);
 const int scanKeyCount = 2;
 const bool indexOK = 0;

 ScanKeyData scanKey[2];
 SysScanDesc scanDescriptor = ((void*)0);
 HeapTuple heapTuple = ((void*)0);
 HeapTuple nodeTuple = ((void*)0);

 ScanKeyInit(&scanKey[0], Anum_pg_dist_node_nodename,
    BTEqualStrategyNumber, F_TEXTEQ, CStringGetTextDatum(nodeName));
 ScanKeyInit(&scanKey[1], Anum_pg_dist_node_nodeport,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(nodePort));
 scanDescriptor = systable_beginscan(pgDistNode, InvalidOid, indexOK,
          ((void*)0), scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 if (HeapTupleIsValid(heapTuple))
 {
  nodeTuple = heap_copytuple(heapTuple);
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistNode, NoLock);

 return nodeTuple;
}
