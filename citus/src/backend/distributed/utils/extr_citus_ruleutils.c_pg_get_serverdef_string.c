
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int fdwname; } ;
struct TYPE_13__ {int options; int * serverversion; int * servertype; int servername; int fdwid; } ;
struct TYPE_12__ {int serverid; } ;
struct TYPE_11__ {char* data; int member_3; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef TYPE_2__ ForeignTable ;
typedef TYPE_3__ ForeignServer ;
typedef TYPE_4__ ForeignDataWrapper ;


 int AppendOptionListToString (TYPE_1__*,int ) ;
 TYPE_4__* GetForeignDataWrapper (int ) ;
 TYPE_3__* GetForeignServer (int ) ;
 TYPE_2__* GetForeignTable (int ) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_identifier (int ) ;
 int quote_literal_cstr (int *) ;

char *
pg_get_serverdef_string(Oid tableRelationId)
{
 ForeignTable *foreignTable = GetForeignTable(tableRelationId);
 ForeignServer *server = GetForeignServer(foreignTable->serverid);
 ForeignDataWrapper *foreignDataWrapper = GetForeignDataWrapper(server->fdwid);

 StringInfoData buffer = { ((void*)0), 0, 0, 0 };
 initStringInfo(&buffer);

 appendStringInfo(&buffer, "CREATE SERVER %s", quote_identifier(server->servername));
 if (server->servertype != ((void*)0))
 {
  appendStringInfo(&buffer, " TYPE %s",
       quote_literal_cstr(server->servertype));
 }
 if (server->serverversion != ((void*)0))
 {
  appendStringInfo(&buffer, " VERSION %s",
       quote_literal_cstr(server->serverversion));
 }

 appendStringInfo(&buffer, " FOREIGN DATA WRAPPER %s",
      quote_identifier(foreignDataWrapper->fdwname));


 AppendOptionListToString(&buffer, server->options);

 return (buffer.data);
}
