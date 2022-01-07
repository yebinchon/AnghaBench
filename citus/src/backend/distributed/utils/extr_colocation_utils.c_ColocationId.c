
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int colocationid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_dist_colocation ;


 int AccessShareLock ;
 int Anum_pg_dist_colocation_distributioncolumntype ;
 int Anum_pg_dist_colocation_replicationfactor ;
 int Anum_pg_dist_colocation_shardcount ;
 int BTEqualStrategyNumber ;
 int DistColocationConfigurationIndexId () ;
 int DistColocationRelationId () ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int INVALID_COLOCATION_ID ;
 int Int32GetDatum (int) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int UInt32GetDatum (int) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int const,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;

uint32
ColocationId(int shardCount, int replicationFactor, Oid distributionColumnType)
{
 uint32 colocationId = INVALID_COLOCATION_ID;
 HeapTuple colocationTuple = ((void*)0);
 SysScanDesc scanDescriptor;
 const int scanKeyCount = 3;
 ScanKeyData scanKey[3];
 bool indexOK = 1;

 Relation pgDistColocation = heap_open(DistColocationRelationId(), AccessShareLock);


 ScanKeyInit(&scanKey[0], Anum_pg_dist_colocation_shardcount,
    BTEqualStrategyNumber, F_INT4EQ, UInt32GetDatum(shardCount));
 ScanKeyInit(&scanKey[1], Anum_pg_dist_colocation_replicationfactor,
    BTEqualStrategyNumber, F_INT4EQ, Int32GetDatum(replicationFactor));
 ScanKeyInit(&scanKey[2], Anum_pg_dist_colocation_distributioncolumntype,
    BTEqualStrategyNumber, F_OIDEQ, ObjectIdGetDatum(distributionColumnType));

 scanDescriptor = systable_beginscan(pgDistColocation,
          DistColocationConfigurationIndexId(),
          indexOK, ((void*)0), scanKeyCount, scanKey);

 colocationTuple = systable_getnext(scanDescriptor);
 if (HeapTupleIsValid(colocationTuple))
 {
  Form_pg_dist_colocation colocationForm =
   (Form_pg_dist_colocation) GETSTRUCT(colocationTuple);

  colocationId = colocationForm->colocationid;
 }

 systable_endscan(scanDescriptor);
 heap_close(pgDistColocation, AccessShareLock);

 return colocationId;
}
