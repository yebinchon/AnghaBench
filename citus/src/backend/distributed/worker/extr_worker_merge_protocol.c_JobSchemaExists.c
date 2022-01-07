
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Datum ;


 int CStringGetDatum (int ) ;
 int NAMESPACENAME ;
 int SearchSysCacheExists (int ,int ,int ,int ,int ) ;

bool
JobSchemaExists(StringInfo schemaName)
{
 Datum schemaNameDatum = CStringGetDatum(schemaName->data);
 bool schemaExists = SearchSysCacheExists(NAMESPACENAME, schemaNameDatum, 0, 0, 0);

 return schemaExists;
}
