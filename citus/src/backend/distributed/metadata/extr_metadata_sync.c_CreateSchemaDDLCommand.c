
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;


 int CREATE_SCHEMA_COMMAND ;
 int NAMEDATALEN ;
 char* SchemaOwnerName (int ) ;
 int appendStringInfo (TYPE_1__*,int ,char const*,char const*) ;
 char* get_namespace_name (int ) ;
 TYPE_1__* makeStringInfo () ;
 char* quote_identifier (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

char *
CreateSchemaDDLCommand(Oid schemaId)
{
 char *schemaName = get_namespace_name(schemaId);
 StringInfo schemaNameDef = ((void*)0);
 const char *ownerName = ((void*)0);
 const char *quotedSchemaName = ((void*)0);

 if (strncmp(schemaName, "public", NAMEDATALEN) == 0)
 {
  return ((void*)0);
 }

 schemaNameDef = makeStringInfo();
 quotedSchemaName = quote_identifier(schemaName);
 ownerName = quote_identifier(SchemaOwnerName(schemaId));
 appendStringInfo(schemaNameDef, CREATE_SCHEMA_COMMAND, quotedSchemaName, ownerName);

 return schemaNameDef->data;
}
