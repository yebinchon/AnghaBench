
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tupdesc; int ** vals; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef int Datum ;


 int Assert (int) ;
 int AssertArg (int) ;
 int DatumGetBool (int ) ;
 int ERROR ;
 int IsDistributedTable (int ) ;
 int SELECT_EXIST_QUERY ;
 int SPI_OK_CONNECT ;
 int SPI_OK_SELECT ;
 int SPI_connect () ;
 int SPI_execute (int ,int,int ) ;
 int SPI_finish () ;
 int SPI_getbinval (int *,int ,int,int*) ;
 int SPI_processed ;
 TYPE_4__* SPI_tuptable ;
 int appendStringInfo (TYPE_1__*,int ,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 TYPE_1__* makeStringInfo () ;
 char* quote_qualified_identifier (char*,char*) ;

__attribute__((used)) static bool
LocalTableEmpty(Oid tableId)
{
 Oid schemaId = get_rel_namespace(tableId);
 char *schemaName = get_namespace_name(schemaId);
 char *tableName = get_rel_name(tableId);
 char *tableQualifiedName = quote_qualified_identifier(schemaName, tableName);

 int spiConnectionResult = 0;
 int spiQueryResult = 0;
 StringInfo selectExistQueryString = makeStringInfo();

 HeapTuple tuple = ((void*)0);
 Datum hasDataDatum = 0;
 bool localTableEmpty = 0;
 bool columnNull = 0;
 bool readOnly = 1;

 int rowId = 0;
 int attributeId = 1;

 AssertArg(!IsDistributedTable(tableId));

 spiConnectionResult = SPI_connect();
 if (spiConnectionResult != SPI_OK_CONNECT)
 {
  ereport(ERROR, (errmsg("could not connect to SPI manager")));
 }

 appendStringInfo(selectExistQueryString, SELECT_EXIST_QUERY, tableQualifiedName);

 spiQueryResult = SPI_execute(selectExistQueryString->data, readOnly, 0);
 if (spiQueryResult != SPI_OK_SELECT)
 {
  ereport(ERROR, (errmsg("execution was not successful \"%s\"",
          selectExistQueryString->data)));
 }


 Assert(SPI_processed == 1);

 tuple = SPI_tuptable->vals[rowId];
 hasDataDatum = SPI_getbinval(tuple, SPI_tuptable->tupdesc, attributeId, &columnNull);
 localTableEmpty = !DatumGetBool(hasDataDatum);

 SPI_finish();

 return localTableEmpty;
}
