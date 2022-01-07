
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;


 char* TableOwner (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*,int ) ;
 char* generate_qualified_relation_name (int ) ;
 TYPE_1__* makeStringInfo () ;
 int quote_identifier (char*) ;

char *
TableOwnerResetCommand(Oid relationId)
{
 StringInfo ownerResetCommand = makeStringInfo();
 char *qualifiedRelationName = generate_qualified_relation_name(relationId);
 char *tableOwnerName = TableOwner(relationId);

 appendStringInfo(ownerResetCommand,
      "ALTER TABLE %s OWNER TO %s",
      qualifiedRelationName,
      quote_identifier(tableOwnerName));

 return ownerResetCommand->data;
}
