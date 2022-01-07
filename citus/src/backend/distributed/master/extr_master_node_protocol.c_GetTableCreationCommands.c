
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addCatalog; void* schemas; } ;
typedef TYPE_1__ OverrideSearchPath ;
typedef int Oid ;
typedef int List ;


 int CurrentMemoryContext ;
 TYPE_1__* GetOverrideSearchPath (int ) ;
 void* NIL ;
 int PopOverrideSearchPath () ;
 int PushOverrideSearchPath (TYPE_1__*) ;
 char RELKIND_FOREIGN_TABLE ;
 char* TableOwnerResetCommand (int ) ;
 char get_rel_relkind (int ) ;
 int * lappend (int *,char*) ;
 char* pg_get_extensiondef_string (int ) ;
 char* pg_get_serverdef_string (int ) ;
 char* pg_get_tablecolumnoptionsdef_string (int ) ;
 char* pg_get_tableschemadef_string (int ,int) ;

List *
GetTableCreationCommands(Oid relationId, bool includeSequenceDefaults)
{
 List *tableDDLEventList = NIL;
 char tableType = 0;
 char *tableSchemaDef = ((void*)0);
 char *tableColumnOptionsDef = ((void*)0);
 char *tableOwnerDef = ((void*)0);






 OverrideSearchPath *overridePath = GetOverrideSearchPath(CurrentMemoryContext);
 overridePath->schemas = NIL;
 overridePath->addCatalog = 1;
 PushOverrideSearchPath(overridePath);


 tableType = get_rel_relkind(relationId);
 if (tableType == RELKIND_FOREIGN_TABLE)
 {
  char *extensionDef = pg_get_extensiondef_string(relationId);
  char *serverDef = pg_get_serverdef_string(relationId);

  if (extensionDef != ((void*)0))
  {
   tableDDLEventList = lappend(tableDDLEventList, extensionDef);
  }
  tableDDLEventList = lappend(tableDDLEventList, serverDef);
 }


 tableSchemaDef = pg_get_tableschemadef_string(relationId, includeSequenceDefaults);
 tableColumnOptionsDef = pg_get_tablecolumnoptionsdef_string(relationId);

 tableDDLEventList = lappend(tableDDLEventList, tableSchemaDef);
 if (tableColumnOptionsDef != ((void*)0))
 {
  tableDDLEventList = lappend(tableDDLEventList, tableColumnOptionsDef);
 }

 tableOwnerDef = TableOwnerResetCommand(relationId);
 if (tableOwnerDef != ((void*)0))
 {
  tableDDLEventList = lappend(tableDDLEventList, tableOwnerDef);
 }


 PopOverrideSearchPath();

 return tableDDLEventList;
}
