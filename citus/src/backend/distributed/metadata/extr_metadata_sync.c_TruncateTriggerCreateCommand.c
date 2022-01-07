
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 char* generate_qualified_relation_name (int ) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;

__attribute__((used)) static char *
TruncateTriggerCreateCommand(Oid relationId)
{
 StringInfo triggerCreateCommand = makeStringInfo();
 char *tableName = generate_qualified_relation_name(relationId);

 appendStringInfo(triggerCreateCommand,
      "SELECT worker_create_truncate_trigger(%s)",
      quote_literal_cstr(tableName));

 return triggerCreateCommand->data;
}
