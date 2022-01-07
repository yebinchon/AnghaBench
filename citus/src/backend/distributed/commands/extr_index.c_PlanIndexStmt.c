
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char* schemaname; } ;
struct TYPE_11__ {char const* commandString; int taskList; scalar_t__ concurrentIndexCmd; int targetRelationId; } ;
struct TYPE_10__ {char* idxname; scalar_t__ concurrent; TYPE_5__* relation; } ;
typedef int * Relation ;
typedef int Oid ;
typedef int * MemoryContext ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_1__ IndexStmt ;
typedef TYPE_2__ DDLJob ;


 int CreateIndexTaskList (int ,TYPE_1__*) ;
 int ErrorIfUnsupportedIndexStmt (TYPE_1__*) ;
 int * GetMemoryChunkContext (TYPE_5__*) ;
 int InvalidOid ;
 int IsDistributedTable (int ) ;
 char* MemoryContextStrdup (int *,char*) ;
 int * NIL ;
 int NoLock ;
 int OidIsValid (int ) ;
 int RelationGetNamespace (int *) ;
 int RelationGetRelid (int *) ;
 int ShareLock ;
 int ShareUpdateExclusiveLock ;
 char* get_namespace_name (int ) ;
 int get_namespace_oid (char*,int) ;
 int get_relname_relid (char*,int ) ;
 int heap_close (int *,int ) ;
 int * heap_openrv (TYPE_5__*,int ) ;
 int * list_make1 (TYPE_2__*) ;
 TYPE_2__* palloc0 (int) ;

List *
PlanIndexStmt(IndexStmt *createIndexStatement, const char *createIndexCommand)
{
 List *ddlJobs = NIL;






 if (createIndexStatement->relation != ((void*)0))
 {
  Relation relation = ((void*)0);
  Oid relationId = InvalidOid;
  bool isDistributedRelation = 0;
  LOCKMODE lockmode = ShareLock;
  MemoryContext relationContext = ((void*)0);






  if (createIndexStatement->concurrent)
  {
   lockmode = ShareUpdateExclusiveLock;
  }







  relation = heap_openrv(createIndexStatement->relation, lockmode);
  relationId = RelationGetRelid(relation);

  isDistributedRelation = IsDistributedTable(relationId);

  if (createIndexStatement->relation->schemaname == ((void*)0))
  {







   char *namespaceName = get_namespace_name(RelationGetNamespace(relation));


   relationContext = GetMemoryChunkContext(createIndexStatement->relation);
   createIndexStatement->relation->schemaname = MemoryContextStrdup(
    relationContext, namespaceName);
  }

  heap_close(relation, NoLock);

  if (isDistributedRelation)
  {
   Oid namespaceId = InvalidOid;
   Oid indexRelationId = InvalidOid;
   char *indexName = createIndexStatement->idxname;
   char *namespaceName = createIndexStatement->relation->schemaname;

   ErrorIfUnsupportedIndexStmt(createIndexStatement);

   namespaceId = get_namespace_oid(namespaceName, 0);
   indexRelationId = get_relname_relid(indexName, namespaceId);


   if (!OidIsValid(indexRelationId))
   {
    DDLJob *ddlJob = palloc0(sizeof(DDLJob));
    ddlJob->targetRelationId = relationId;
    ddlJob->concurrentIndexCmd = createIndexStatement->concurrent;
    ddlJob->commandString = createIndexCommand;
    ddlJob->taskList = CreateIndexTaskList(relationId, createIndexStatement);

    ddlJobs = list_make1(ddlJob);
   }
  }
 }

 return ddlJobs;
}
