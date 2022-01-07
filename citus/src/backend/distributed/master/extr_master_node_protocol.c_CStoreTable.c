
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int fdwname; } ;
struct TYPE_8__ {int fdwid; } ;
struct TYPE_7__ {int serverid; } ;
typedef int Oid ;
typedef TYPE_1__ ForeignTable ;
typedef TYPE_2__ ForeignServer ;
typedef TYPE_3__ ForeignDataWrapper ;


 int CSTORE_FDW_NAME ;
 TYPE_3__* GetForeignDataWrapper (int ) ;
 TYPE_2__* GetForeignServer (int ) ;
 TYPE_1__* GetForeignTable (int ) ;
 int NAMEDATALEN ;
 char RELKIND_FOREIGN_TABLE ;
 char get_rel_relkind (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

bool
CStoreTable(Oid relationId)
{
 bool cstoreTable = 0;

 char relationKind = get_rel_relkind(relationId);
 if (relationKind == RELKIND_FOREIGN_TABLE)
 {
  ForeignTable *foreignTable = GetForeignTable(relationId);
  ForeignServer *server = GetForeignServer(foreignTable->serverid);
  ForeignDataWrapper *foreignDataWrapper = GetForeignDataWrapper(server->fdwid);

  if (strncmp(foreignDataWrapper->fdwname, CSTORE_FDW_NAME, NAMEDATALEN) == 0)
  {
   cstoreTable = 1;
  }
 }

 return cstoreTable;
}
