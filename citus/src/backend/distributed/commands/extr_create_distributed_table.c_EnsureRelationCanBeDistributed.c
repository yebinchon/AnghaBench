
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int vartype; } ;
typedef TYPE_1__ Var ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_11__ {scalar_t__ tdhasoid; } ;
typedef int * Relation ;
typedef scalar_t__ Oid ;


 int BTORDER_PROC ;
 int BTREE_AM_OID ;
 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_NONE ;
 char DISTRIBUTE_BY_RANGE ;
 scalar_t__ DistributionColumnUsesGeneratedStoredColumn (TYPE_2__*,TYPE_1__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int EnsureLocalTableEmptyIfNecessary (scalar_t__,char,int) ;
 int EnsureReplicationSettings (scalar_t__,char) ;
 int EnsureTableNotDistributed (scalar_t__) ;
 int ErrorIfUnsupportedConstraint (int *,char,TYPE_1__*,int ) ;
 int ErrorIfUnsupportedPolicy (int *) ;
 int HASHSTANDARD_PROC ;
 int HASH_AM_OID ;
 scalar_t__ InvalidOid ;
 int IsDistributedTable (scalar_t__) ;
 int NoLock ;
 scalar_t__ PartitionParentOid (scalar_t__) ;
 scalar_t__ PartitionTable (scalar_t__) ;
 scalar_t__ PartitionedTable (scalar_t__) ;
 TYPE_2__* RelationGetDescr (int *) ;
 char* RelationGetRelationName (int *) ;
 int RelationUsesHeapAccessMethodOrNone (int *) ;
 scalar_t__ RelationUsesIdentityColumns (TYPE_2__*) ;
 scalar_t__ SupportFunctionForColumn (TYPE_1__*,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdatatype (int ) ;
 int errdetail (char*,...) ;
 int errhint (char*,char*) ;
 int errmsg (char*,...) ;
 int format_type_be (int ) ;
 char* get_rel_name (scalar_t__) ;
 int relation_close (int *,int ) ;
 int * relation_open (scalar_t__,int ) ;

__attribute__((used)) static void
EnsureRelationCanBeDistributed(Oid relationId, Var *distributionColumn,
          char distributionMethod, uint32 colocationId,
          char replicationModel, bool viaDeprecatedAPI)
{
 Relation relation = ((void*)0);
 TupleDesc relationDesc = ((void*)0);
 char *relationName = ((void*)0);
 Oid parentRelationId = InvalidOid;

 EnsureTableNotDistributed(relationId);
 EnsureLocalTableEmptyIfNecessary(relationId, distributionMethod, viaDeprecatedAPI);
 EnsureReplicationSettings(InvalidOid, replicationModel);


 relation = relation_open(relationId, NoLock);
 relationDesc = RelationGetDescr(relation);
 relationName = RelationGetRelationName(relation);

 if (!RelationUsesHeapAccessMethodOrNone(relation))
 {
  ereport(ERROR, (errmsg(
       "cannot distribute relations using non-heap access methods")));
 }




 if (relationDesc->tdhasoid)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot distribute relation: %s", relationName),
      errdetail("Distributed relations must not specify the WITH "
          "(OIDS) option in their definitions.")));
 }



 if (RelationUsesIdentityColumns(relationDesc))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot distribute relation: %s", relationName),
      errdetail("Distributed relations must not use GENERATED "
          "... AS IDENTITY.")));
 }


 if (distributionMethod != DISTRIBUTE_BY_NONE &&
  DistributionColumnUsesGeneratedStoredColumn(relationDesc, distributionColumn))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot distribute relation: %s", relationName),
      errdetail("Distribution column must not use GENERATED ALWAYS "
          "AS (...) STORED.")));
 }


 if (distributionMethod == DISTRIBUTE_BY_HASH)
 {
  Oid hashSupportFunction = SupportFunctionForColumn(distributionColumn,
                 HASH_AM_OID,
                 HASHSTANDARD_PROC);
  if (hashSupportFunction == InvalidOid)
  {
   ereport(ERROR, (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("could not identify a hash function for type %s",
           format_type_be(distributionColumn->vartype)),
       errdatatype(distributionColumn->vartype),
       errdetail("Partition column types must have a hash function "
           "defined to use hash partitioning.")));
  }
 }
 else if (distributionMethod == DISTRIBUTE_BY_RANGE)
 {
  Oid btreeSupportFunction = SupportFunctionForColumn(distributionColumn,
               BTREE_AM_OID, BTORDER_PROC);
  if (btreeSupportFunction == InvalidOid)
  {
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_FUNCTION),
      errmsg("could not identify a comparison function for type %s",
       format_type_be(distributionColumn->vartype)),
      errdatatype(distributionColumn->vartype),
      errdetail("Partition column types must have a comparison function "
          "defined to use range partitioning.")));
  }
 }

 if (PartitionTable(relationId))
 {
  parentRelationId = PartitionParentOid(relationId);
 }


 if (PartitionTable(relationId) && !IsDistributedTable(parentRelationId))
 {
  char *parentRelationName = get_rel_name(parentRelationId);

  ereport(ERROR, (errmsg("cannot distribute relation \"%s\" which is partition of "
          "\"%s\"", relationName, parentRelationName),
      errdetail("Citus does not support distributing partitions "
          "if their parent is not distributed table."),
      errhint("Distribute the partitioned table \"%s\" instead.",
        parentRelationName)));
 }







 if (PartitionedTable(relationId))
 {

  if (viaDeprecatedAPI)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("distributing partitioned tables in only supported "
           "with create_distributed_table UDF")));
  }


  if (distributionMethod != DISTRIBUTE_BY_HASH)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("distributing partitioned tables in only supported "
           "for hash-distributed tables")));
  }


  if (PartitionTable(relationId))
  {
   char *parentRelationName = get_rel_name(parentRelationId);

   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("distributing multi-level partitioned tables "
           "is not supported"),
       errdetail("Relation \"%s\" is partitioned table itself and "
           "it is also partition of relation \"%s\".",
           relationName, parentRelationName)));
  }
 }

 ErrorIfUnsupportedConstraint(relation, distributionMethod, distributionColumn,
         colocationId);


 ErrorIfUnsupportedPolicy(relation);
 relation_close(relation, NoLock);
}
