
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int Var ;
struct TYPE_8__ {scalar_t__ contype; scalar_t__ confdeltype; scalar_t__ confupdtype; int confrelid; } ;
struct TYPE_7__ {int rd_id; } ;
typedef int * SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 char DISTRIBUTE_BY_NONE ;
 int * DistPartitionKey (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 scalar_t__ FKCONSTR_ACTION_CASCADE ;
 scalar_t__ FKCONSTR_ACTION_SETDEFAULT ;
 scalar_t__ FKCONSTR_ACTION_SETNULL ;
 int F_OIDEQ ;
 int ForeignConstraintFindDistKeys (int *,int *,int *,int*,int*) ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 char PartitionMethod (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ShardReplicationFactor ;
 int SingleReplicatedTable (int ) ;
 scalar_t__ TableColocationId (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int heap_close (TYPE_1__*,int ) ;
 TYPE_1__* heap_open (int ,int ) ;
 int * systable_beginscan (TYPE_1__*,int ,int,int *,int,int *) ;
 int systable_endscan (int *) ;
 int * systable_getnext (int *) ;

void
ErrorIfUnsupportedForeignConstraintExists(Relation relation, char referencingDistMethod,
            Var *referencingDistKey,
            uint32 referencingColocationId)
{
 Relation pgConstraint = ((void*)0);
 SysScanDesc scanDescriptor = ((void*)0);
 ScanKeyData scanKey[1];
 int scanKeyCount = 1;
 HeapTuple heapTuple = ((void*)0);

 Oid referencingTableId = relation->rd_id;
 Oid referencedTableId = InvalidOid;
 uint32 referencedColocationId = INVALID_COLOCATION_ID;
 bool selfReferencingTable = 0;
 bool referencingNotReplicated = 1;

 if (IsDistributedTable(referencingTableId))
 {

  referencingNotReplicated = SingleReplicatedTable(referencingTableId);
 }
 else
 {

  referencingNotReplicated = (ShardReplicationFactor == 1);
 }

 pgConstraint = heap_open(ConstraintRelationId, AccessShareLock);
 ScanKeyInit(&scanKey[0], Anum_pg_constraint_conrelid, BTEqualStrategyNumber, F_OIDEQ,
    relation->rd_id);
 scanDescriptor = systable_beginscan(pgConstraint, ConstraintRelidTypidNameIndexId,
          1, ((void*)0),
          scanKeyCount, scanKey);

 heapTuple = systable_getnext(scanDescriptor);
 while (HeapTupleIsValid(heapTuple))
 {
  Form_pg_constraint constraintForm = (Form_pg_constraint) GETSTRUCT(heapTuple);
  bool referencedIsDistributed = 0;
  char referencedDistMethod = 0;
  Var *referencedDistKey = ((void*)0);
  bool referencingIsReferenceTable = 0;
  bool referencedIsReferenceTable = 0;
  int referencingAttrIndex = -1;
  int referencedAttrIndex = -1;
  bool referencingColumnsIncludeDistKey = 0;
  bool foreignConstraintOnDistKey = 0;

  if (constraintForm->contype != CONSTRAINT_FOREIGN)
  {
   heapTuple = systable_getnext(scanDescriptor);
   continue;
  }

  referencedTableId = constraintForm->confrelid;
  selfReferencingTable = (referencingTableId == referencedTableId);

  referencedIsDistributed = IsDistributedTable(referencedTableId);
  if (!referencedIsDistributed && !selfReferencingTable)
  {
   ereport(ERROR, (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
       errmsg("cannot create foreign key constraint"),
       errdetail("Referenced table must be a distributed table"
           " or a reference table.")));
  }

  if (!selfReferencingTable)
  {
   referencedDistMethod = PartitionMethod(referencedTableId);
   referencedDistKey = (referencedDistMethod == DISTRIBUTE_BY_NONE) ?
        ((void*)0) :
        DistPartitionKey(referencedTableId);
   referencedColocationId = TableColocationId(referencedTableId);
  }
  else
  {
   referencedDistMethod = referencingDistMethod;
   referencedDistKey = referencingDistKey;
   referencedColocationId = referencingColocationId;
  }

  referencingIsReferenceTable = (referencingDistMethod == DISTRIBUTE_BY_NONE);
  referencedIsReferenceTable = (referencedDistMethod == DISTRIBUTE_BY_NONE);






  if (referencingIsReferenceTable && referencedIsReferenceTable)
  {
   heapTuple = systable_getnext(scanDescriptor);
   continue;
  }





  if (referencingIsReferenceTable && !referencedIsReferenceTable)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot create foreign key constraint "
           "since foreign keys from reference tables "
           "to distributed tables are not supported"),
       errdetail("A reference table can only have reference "
           "keys to other reference tables")));
  }





  if (referencingColocationId == INVALID_COLOCATION_ID ||
   (referencingColocationId != referencedColocationId &&
    !referencedIsReferenceTable))
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot create foreign key constraint since "
           "relations are not colocated or not referencing "
           "a reference table"),
       errdetail(
        "A distributed table can only have foreign keys "
        "if it is referencing another colocated hash "
        "distributed table or a reference table")));
  }

  ForeignConstraintFindDistKeys(heapTuple,
           referencingDistKey,
           referencedDistKey,
           &referencingAttrIndex,
           &referencedAttrIndex);
  referencingColumnsIncludeDistKey = (referencingAttrIndex != -1);
  foreignConstraintOnDistKey =
   (referencingColumnsIncludeDistKey && referencingAttrIndex ==
    referencedAttrIndex);






  if (referencingColumnsIncludeDistKey)
  {




   if (constraintForm->confdeltype == FKCONSTR_ACTION_SETNULL ||
    constraintForm->confdeltype == FKCONSTR_ACTION_SETDEFAULT)
   {
    ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
        errmsg("cannot create foreign key constraint"),
        errdetail("SET NULL or SET DEFAULT is not supported"
            " in ON DELETE operation when distribution "
            "key is included in the foreign key constraint")));
   }







   if (constraintForm->confupdtype == FKCONSTR_ACTION_SETNULL ||
    constraintForm->confupdtype == FKCONSTR_ACTION_SETDEFAULT ||
    constraintForm->confupdtype == FKCONSTR_ACTION_CASCADE)
   {
    ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
        errmsg("cannot create foreign key constraint"),
        errdetail("SET NULL, SET DEFAULT or CASCADE is not "
            "supported in ON UPDATE operation  when "
            "distribution key included in the foreign "
            "constraint.")));
   }
  }





  if (!referencedIsReferenceTable && !foreignConstraintOnDistKey)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot create foreign key constraint"),
       errdetail("Foreign keys are supported in two cases, "
           "either in between two colocated tables including "
           "partition column in the same ordinal in the both "
           "tables or from distributed to reference tables")));
  }
  if (!referencingNotReplicated)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot create foreign key constraint"),
       errdetail("Citus Community Edition currently supports "
           "foreign key constraints only for "
           "\"citus.shard_replication_factor = 1\"."),
       errhint("Please change \"citus.shard_replication_factor to "
         "1\". To learn more about using foreign keys with "
         "other replication factors, please contact us at "
         "https://citusdata.com/about/contact_us.")));
  }

  heapTuple = systable_getnext(scanDescriptor);
 }


 systable_endscan(scanDescriptor);
 heap_close(pgConstraint, AccessShareLock);
}
