
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int fdwname; } ;
struct TYPE_12__ {int fdwid; } ;
struct TYPE_11__ {int serverid; } ;
struct TYPE_10__ {char* data; int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef TYPE_2__ ForeignTable ;
typedef TYPE_3__ ForeignServer ;
typedef TYPE_4__ ForeignDataWrapper ;


 int ForeignDataWrapperRelationId ;
 TYPE_4__* GetForeignDataWrapper (int ) ;
 TYPE_3__* GetForeignServer (int ) ;
 TYPE_2__* GetForeignTable (int ) ;
 int NOTICE ;
 scalar_t__ OidIsValid (int ) ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int getExtensionOfObject (int ,int ) ;
 char* get_extension_name (int ) ;
 int get_extension_schema (int ) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_identifier (char*) ;

char *
pg_get_extensiondef_string(Oid tableRelationId)
{
 ForeignTable *foreignTable = GetForeignTable(tableRelationId);
 ForeignServer *server = GetForeignServer(foreignTable->serverid);
 ForeignDataWrapper *foreignDataWrapper = GetForeignDataWrapper(server->fdwid);
 StringInfoData buffer = { ((void*)0), 0, 0, 0 };

 Oid classId = ForeignDataWrapperRelationId;
 Oid objectId = server->fdwid;

 Oid extensionId = getExtensionOfObject(classId, objectId);
 if (OidIsValid(extensionId))
 {
  char *extensionName = get_extension_name(extensionId);
  Oid extensionSchemaId = get_extension_schema(extensionId);
  char *extensionSchema = get_namespace_name(extensionSchemaId);

  initStringInfo(&buffer);
  appendStringInfo(&buffer, "CREATE EXTENSION IF NOT EXISTS %s WITH SCHEMA %s",
       quote_identifier(extensionName),
       quote_identifier(extensionSchema));
 }
 else
 {
  ereport(NOTICE, (errmsg("foreign-data wrapper \"%s\" does not have an "
        "extension defined", foreignDataWrapper->fdwname)));
 }

 return (buffer.data);
}
