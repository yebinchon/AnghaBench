
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;
typedef int List ;


 int DROP_FOREIGN_TABLE_COMMAND ;
 int DROP_REGULAR_TABLE_COMMAND ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int * GetTableCreationCommands (int ,int) ;
 int * NIL ;
 char RELKIND_FOREIGN_TABLE ;
 scalar_t__ RegularTable (int ) ;
 int appendStringInfo (TYPE_1__*,int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 char get_rel_relkind (int ) ;
 int * list_concat (int *,int *) ;
 int * list_make1 (int ) ;
 TYPE_1__* makeStringInfo () ;
 char* quote_qualified_identifier (char const*,char const*) ;

__attribute__((used)) static List *
RecreateTableDDLCommandList(Oid relationId)
{
 const char *relationName = get_rel_name(relationId);
 Oid relationSchemaId = get_rel_namespace(relationId);
 const char *relationSchemaName = get_namespace_name(relationSchemaId);
 const char *qualifiedRelationName = quote_qualified_identifier(relationSchemaName,
                   relationName);

 StringInfo dropCommand = makeStringInfo();
 List *createCommandList = NIL;
 List *dropCommandList = NIL;
 List *recreateCommandList = NIL;
 char relationKind = get_rel_relkind(relationId);
 bool includeSequenceDefaults = 0;


 if (RegularTable(relationId))
 {
  appendStringInfo(dropCommand, DROP_REGULAR_TABLE_COMMAND,
       qualifiedRelationName);
 }
 else if (relationKind == RELKIND_FOREIGN_TABLE)
 {
  appendStringInfo(dropCommand, DROP_FOREIGN_TABLE_COMMAND,
       qualifiedRelationName);
 }
 else
 {
  ereport(ERROR, (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("repair target is not a regular, foreign or partitioned "
          "table")));
 }

 dropCommandList = list_make1(dropCommand->data);
 createCommandList = GetTableCreationCommands(relationId, includeSequenceDefaults);
 recreateCommandList = list_concat(dropCommandList, createCommandList);

 return recreateCommandList;
}
