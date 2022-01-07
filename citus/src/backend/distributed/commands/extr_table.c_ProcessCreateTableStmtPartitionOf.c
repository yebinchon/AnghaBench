
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Var ;
struct TYPE_3__ {scalar_t__ inhRelations; int * relation; int * partbound; } ;
typedef int RangeVar ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ CreateStmt ;


 int Assert (int) ;
 int CreateDistributedTable (scalar_t__,int *,char,char*,int) ;
 char DISTRIBUTE_BY_HASH ;
 int * DistPartitionKey (scalar_t__) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsDistributedTable (scalar_t__) ;
 scalar_t__ NIL ;
 int NoLock ;
 scalar_t__ RangeVarGetRelid (int *,int ,int) ;
 char* generate_qualified_relation_name (scalar_t__) ;
 int * linitial (scalar_t__) ;
 int list_length (scalar_t__) ;

void
ProcessCreateTableStmtPartitionOf(CreateStmt *createStatement)
{
 if (createStatement->inhRelations != NIL && createStatement->partbound != ((void*)0))
 {
  RangeVar *parentRelation = linitial(createStatement->inhRelations);
  bool parentMissingOk = 0;
  Oid parentRelationId = RangeVarGetRelid(parentRelation, NoLock,
            parentMissingOk);


  Assert(list_length(createStatement->inhRelations) == 1);

  Assert(parentRelationId != InvalidOid);





  if (IsDistributedTable(parentRelationId))
  {
   bool missingOk = 0;
   Oid relationId = RangeVarGetRelid(createStatement->relation, NoLock,
             missingOk);
   Var *parentDistributionColumn = DistPartitionKey(parentRelationId);
   char parentDistributionMethod = DISTRIBUTE_BY_HASH;
   char *parentRelationName = generate_qualified_relation_name(parentRelationId);
   bool viaDeprecatedAPI = 0;

   CreateDistributedTable(relationId, parentDistributionColumn,
           parentDistributionMethod, parentRelationName,
           viaDeprecatedAPI);
  }
 }
}
