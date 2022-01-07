
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int indisvalid; } ;
struct TYPE_11__ {int t_self; } ;
struct TYPE_10__ {int idxname; int relation; int concurrent; } ;
typedef int * Relation ;
typedef int Oid ;
typedef TYPE_1__ IndexStmt ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_index ;


 int Assert (int ) ;
 int CatalogTupleUpdate (int *,int *,TYPE_2__*) ;
 int CommitTransactionCommand () ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int INDEXRELID ;
 int INDEX_DROP_CLEAR_VALID ;
 int IndexRelationId ;
 int InvalidOid ;
 int IsCoordinator () ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetNamespace (int *) ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int ShareUpdateExclusiveLock ;
 int StartTransactionCommand () ;
 int get_relname_relid (int ,int ) ;
 int heap_close (int *,int ) ;
 int heap_freetuple (TYPE_2__*) ;
 int * heap_open (int ,int ) ;
 int * heap_openrv (int ,int ) ;
 int index_close (int *,int ) ;
 int * index_open (int ,int ) ;
 int index_set_state_flags (int ,int ) ;

void
PostProcessIndexStmt(IndexStmt *indexStmt)
{
 Relation relation = ((void*)0);
 Oid indexRelationId = InvalidOid;
 Relation indexRelation = ((void*)0);
 Relation pg_index = ((void*)0);
 HeapTuple indexTuple = ((void*)0);
 Form_pg_index indexForm = ((void*)0);


 if (!indexStmt->concurrent)
 {
  return;
 }


 if (!IsCoordinator())
 {
  return;
 }


 CommitTransactionCommand();
 StartTransactionCommand();


 relation = heap_openrv(indexStmt->relation, ShareUpdateExclusiveLock);
 indexRelationId = get_relname_relid(indexStmt->idxname,
          RelationGetNamespace(relation));
 indexRelation = index_open(indexRelationId, RowExclusiveLock);


 heap_close(relation, NoLock);
 index_close(indexRelation, NoLock);


 index_set_state_flags(indexRelationId, INDEX_DROP_CLEAR_VALID);


 CommitTransactionCommand();
 StartTransactionCommand();


 pg_index = heap_open(IndexRelationId, RowExclusiveLock);

 indexTuple = SearchSysCacheCopy1(INDEXRELID, ObjectIdGetDatum(indexRelationId));
 Assert(HeapTupleIsValid(indexTuple));


 indexForm = (Form_pg_index) GETSTRUCT(indexTuple);
 indexForm->indisvalid = 1;

 CatalogTupleUpdate(pg_index, &indexTuple->t_self, indexTuple);


 heap_freetuple(indexTuple);
 heap_close(pg_index, RowExclusiveLock);
}
