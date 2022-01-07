
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vartype; } ;
typedef TYPE_1__ Var ;
typedef scalar_t__ Oid ;


 TYPE_1__* DistPartitionKey (scalar_t__) ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int ereport (int ,int ) ;
 int errdetail (char*,char*,char*) ;
 int errmsg (char*,char*,char*) ;
 char* get_rel_name (scalar_t__) ;

void
CheckDistributionColumnType(Oid sourceRelationId, Oid targetRelationId)
{
 Var *sourceDistributionColumn = ((void*)0);
 Var *targetDistributionColumn = ((void*)0);
 Oid sourceDistributionColumnType = InvalidOid;
 Oid targetDistributionColumnType = InvalidOid;


 sourceDistributionColumn = DistPartitionKey(sourceRelationId);
 if (sourceDistributionColumn == ((void*)0))
 {
  sourceDistributionColumnType = InvalidOid;
 }
 else
 {
  sourceDistributionColumnType = sourceDistributionColumn->vartype;
 }


 targetDistributionColumn = DistPartitionKey(targetRelationId);
 if (targetDistributionColumn == ((void*)0))
 {
  targetDistributionColumnType = InvalidOid;
 }
 else
 {
  targetDistributionColumnType = targetDistributionColumn->vartype;
 }

 if (sourceDistributionColumnType != targetDistributionColumnType)
 {
  char *sourceRelationName = get_rel_name(sourceRelationId);
  char *targetRelationName = get_rel_name(targetRelationId);

  ereport(ERROR, (errmsg("cannot colocate tables %s and %s",
          sourceRelationName, targetRelationName),
      errdetail("Distribution column types don't match for "
          "%s and %s.", sourceRelationName,
          targetRelationName)));
 }
}
