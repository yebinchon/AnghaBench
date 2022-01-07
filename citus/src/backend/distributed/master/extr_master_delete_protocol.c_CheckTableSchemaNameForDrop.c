
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int EnsureTableOwner (int ) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;

void
CheckTableSchemaNameForDrop(Oid relationId, char **schemaName, char **tableName)
{
 char *tempTableName = get_rel_name(relationId);

 if (tempTableName != ((void*)0))
 {

  Oid schemaId = get_rel_namespace(relationId);
  (*schemaName) = get_namespace_name(schemaId);
  (*tableName) = tempTableName;

  EnsureTableOwner(relationId);
 }
}
