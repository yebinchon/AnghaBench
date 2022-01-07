
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int ObjectIdGetDatum (int ) ;
 int PartitionedTable (int ) ;
 char* TextDatumGetCString (int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* get_rel_name (int ) ;
 int pg_get_partkeydef ;

char *
GeneratePartitioningInformation(Oid parentTableId)
{
 char *partitionBoundCString = "";
 Datum partitionBoundDatum = 0;

 if (!PartitionedTable(parentTableId))
 {
  char *relationName = get_rel_name(parentTableId);

  ereport(ERROR, (errmsg("\"%s\" is not a parent table", relationName)));
 }

 partitionBoundDatum = DirectFunctionCall1(pg_get_partkeydef,
             ObjectIdGetDatum(parentTableId));

 partitionBoundCString = TextDatumGetCString(partitionBoundDatum);

 return partitionBoundCString;
}
