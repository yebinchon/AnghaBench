
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ReindexIndexCallbackState {int concurrent; void* locked_table_oid; } ;
struct TYPE_12__ {int * schemaname; } ;
struct TYPE_11__ {int concurrentIndexCmd; char const* commandString; int taskList; void* targetRelationId; } ;
struct TYPE_10__ {int concurrent; scalar_t__ kind; TYPE_5__* relation; } ;
typedef int * Relation ;
typedef TYPE_1__ ReindexStmt ;
typedef void* Oid ;
typedef int * MemoryContext ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_2__ DDLJob ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 int CreateReindexTaskList (void*,TYPE_1__*) ;
 int * GetMemoryChunkContext (TYPE_5__*) ;
 void* IndexGetRelation (void*,int) ;
 void* InvalidOid ;
 int IsDistributedTable (void*) ;
 int * MemoryContextStrdup (int *,char*) ;
 int * NIL ;
 int NoLock ;
 scalar_t__ REINDEX_OBJECT_INDEX ;
 scalar_t__ REINDEX_OBJECT_TABLE ;
 int RangeVarCallbackForReindexIndex ;
 int RangeVarCallbackOwnsTable ;
 void* RangeVarGetRelidExtended (TYPE_5__*,int ,int ,int ,struct ReindexIndexCallbackState*) ;
 int RelationGetNamespace (int *) ;
 void* RelationGetRelid (int *) ;
 int ShareUpdateExclusiveLock ;
 char* get_namespace_name (int ) ;
 int heap_close (int *,int ) ;
 int * heap_openrv (TYPE_5__*,int ) ;
 int index_close (int *,int ) ;
 int * index_open (void*,int ) ;
 int * list_make1 (TYPE_2__*) ;
 TYPE_2__* palloc0 (int) ;

List *
PlanReindexStmt(ReindexStmt *reindexStatement, const char *reindexCommand)
{
 List *ddlJobs = NIL;






 if (reindexStatement->relation != ((void*)0))
 {
  Relation relation = ((void*)0);
  Oid relationId = InvalidOid;
  bool isDistributedRelation = 0;




  LOCKMODE lockmode = AccessExclusiveLock;

  MemoryContext relationContext = ((void*)0);

  Assert(reindexStatement->kind == REINDEX_OBJECT_INDEX ||
      reindexStatement->kind == REINDEX_OBJECT_TABLE);

  if (reindexStatement->kind == REINDEX_OBJECT_INDEX)
  {
   Oid indOid;
   struct ReindexIndexCallbackState state;



   state.locked_table_oid = InvalidOid;

   indOid = RangeVarGetRelidExtended(reindexStatement->relation,
             lockmode, 0,
             RangeVarCallbackForReindexIndex,
             &state);
   relation = index_open(indOid, NoLock);
   relationId = IndexGetRelation(indOid, 0);
  }
  else
  {
   RangeVarGetRelidExtended(reindexStatement->relation, lockmode, 0,
          RangeVarCallbackOwnsTable, ((void*)0));

   relation = heap_openrv(reindexStatement->relation, NoLock);
   relationId = RelationGetRelid(relation);
  }

  isDistributedRelation = IsDistributedTable(relationId);

  if (reindexStatement->relation->schemaname == ((void*)0))
  {







   char *namespaceName = get_namespace_name(RelationGetNamespace(relation));


   relationContext = GetMemoryChunkContext(reindexStatement->relation);
   reindexStatement->relation->schemaname = MemoryContextStrdup(relationContext,
                   namespaceName);
  }

  if (reindexStatement->kind == REINDEX_OBJECT_INDEX)
  {
   index_close(relation, NoLock);
  }
  else
  {
   heap_close(relation, NoLock);
  }

  if (isDistributedRelation)
  {
   DDLJob *ddlJob = palloc0(sizeof(DDLJob));
   ddlJob->targetRelationId = relationId;



   ddlJob->concurrentIndexCmd = 0;

   ddlJob->commandString = reindexCommand;
   ddlJob->taskList = CreateReindexTaskList(relationId, reindexStatement);

   ddlJobs = list_make1(ddlJob);
  }
 }

 return ddlJobs;
}
