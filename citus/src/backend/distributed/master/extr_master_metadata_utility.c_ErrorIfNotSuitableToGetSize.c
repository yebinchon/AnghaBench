
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ DISTRIBUTE_BY_HASH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 int IsDistributedTable (int ) ;
 scalar_t__ PartitionMethod (int ) ;
 int SingleReplicatedTable (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 char* get_rel_name (int ) ;
 char* quote_literal_cstr (char*) ;

__attribute__((used)) static void
ErrorIfNotSuitableToGetSize(Oid relationId)
{
 if (!IsDistributedTable(relationId))
 {
  char *relationName = get_rel_name(relationId);
  char *escapedQueryString = quote_literal_cstr(relationName);
  ereport(ERROR, (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("cannot calculate the size because relation %s is not "
          "distributed", escapedQueryString)));
 }

 if (PartitionMethod(relationId) == DISTRIBUTE_BY_HASH &&
  !SingleReplicatedTable(relationId))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot calculate the size because replication factor "
          "is greater than 1")));
 }
}
