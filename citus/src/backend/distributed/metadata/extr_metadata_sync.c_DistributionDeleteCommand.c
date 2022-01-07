
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;
 char* quote_qualified_identifier (char*,char*) ;

char *
DistributionDeleteCommand(char *schemaName, char *tableName)
{
 char *distributedRelationName = ((void*)0);
 StringInfo deleteDistributionCommand = makeStringInfo();

 distributedRelationName = quote_qualified_identifier(schemaName, tableName);

 appendStringInfo(deleteDistributionCommand,
      "SELECT worker_drop_distributed_table(%s)",
      quote_literal_cstr(distributedRelationName));

 return deleteDistributionCommand->data;
}
