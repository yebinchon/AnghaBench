
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ indisclustered; int indrelid; } ;
struct TYPE_5__ {char* data; int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_index ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int INDEXRELID ;
 int InvalidOid ;
 int NIL ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache (int ,int ,int ,int ,int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 char* generate_relation_name (int ,int ) ;
 char* get_rel_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_identifier (char*) ;

char *
pg_get_indexclusterdef_string(Oid indexRelationId)
{
 HeapTuple indexTuple = ((void*)0);
 Form_pg_index indexForm = ((void*)0);
 Oid tableRelationId = InvalidOid;
 StringInfoData buffer = { ((void*)0), 0, 0, 0 };

 indexTuple = SearchSysCache(INDEXRELID, ObjectIdGetDatum(indexRelationId), 0, 0, 0);
 if (!HeapTupleIsValid(indexTuple))
 {
  ereport(ERROR, (errmsg("cache lookup failed for index %u", indexRelationId)));
 }

 indexForm = (Form_pg_index) GETSTRUCT(indexTuple);
 tableRelationId = indexForm->indrelid;


 if (indexForm->indisclustered)
 {
  char *tableName = generate_relation_name(tableRelationId, NIL);
  char *indexName = get_rel_name(indexRelationId);

  initStringInfo(&buffer);
  appendStringInfo(&buffer, "ALTER TABLE %s CLUSTER ON %s",
       tableName, quote_identifier(indexName));
 }

 ReleaseSysCache(indexTuple);

 return (buffer.data);
}
