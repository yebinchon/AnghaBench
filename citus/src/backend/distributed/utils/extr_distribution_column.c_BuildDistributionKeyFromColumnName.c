
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Var ;
struct TYPE_2__ {scalar_t__ attnum; int attcollation; int atttypmod; int atttypid; } ;
typedef int Relation ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 char* RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCacheAttName (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 int * makeVar (int,scalar_t__,int ,int ,int ,int ) ;
 int strlen (char*) ;
 int truncate_identifier (char*,int ,int) ;

Var *
BuildDistributionKeyFromColumnName(Relation distributedRelation, char *columnName)
{
 HeapTuple columnTuple = ((void*)0);
 Form_pg_attribute columnForm = ((void*)0);
 Var *distributionColumn = ((void*)0);
 char *tableName = RelationGetRelationName(distributedRelation);


 if (columnName == ((void*)0))
 {
  return ((void*)0);
 }


 truncate_identifier(columnName, strlen(columnName), 1);


 columnTuple = SearchSysCacheAttName(RelationGetRelid(distributedRelation),
          columnName);
 if (!HeapTupleIsValid(columnTuple))
 {
  ereport(ERROR, (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column \"%s\" of relation \"%s\" does not exist",
          columnName, tableName)));
 }

 columnForm = (Form_pg_attribute) GETSTRUCT(columnTuple);


 if (columnForm->attnum <= 0)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot reference system column \"%s\" in relation \"%s\"",
          columnName, tableName)));
 }


 distributionColumn = makeVar(1, columnForm->attnum, columnForm->atttypid,
         columnForm->atttypmod, columnForm->attcollation, 0);

 ReleaseSysCache(columnTuple);

 return distributionColumn;
}
