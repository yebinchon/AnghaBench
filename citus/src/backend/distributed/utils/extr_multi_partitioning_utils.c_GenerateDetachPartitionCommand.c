
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;


 int ERROR ;
 int InvalidOid ;
 int PartitionTable (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* generate_qualified_relation_name (int ) ;
 int get_partition_parent (int ) ;
 char* get_rel_name (int ) ;
 TYPE_1__* makeStringInfo () ;

char *
GenerateDetachPartitionCommand(Oid partitionTableId)
{
 StringInfo detachPartitionCommand = makeStringInfo();
 Oid parentId = InvalidOid;
 char *tableQualifiedName = ((void*)0);
 char *parentTableQualifiedName = ((void*)0);

 if (!PartitionTable(partitionTableId))
 {
  char *relationName = get_rel_name(partitionTableId);

  ereport(ERROR, (errmsg("\"%s\" is not a partition", relationName)));
 }

 parentId = get_partition_parent(partitionTableId);
 tableQualifiedName = generate_qualified_relation_name(partitionTableId);
 parentTableQualifiedName = generate_qualified_relation_name(parentId);

 appendStringInfo(detachPartitionCommand,
      "ALTER TABLE IF EXISTS %s DETACH PARTITION %s;",
      parentTableQualifiedName, tableQualifiedName);

 return detachPartitionCommand->data;
}
