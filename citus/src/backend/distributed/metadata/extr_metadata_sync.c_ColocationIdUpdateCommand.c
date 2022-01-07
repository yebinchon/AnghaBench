
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;


 int appendStringInfo (TYPE_1__*,char*,int ,int ) ;
 char* generate_qualified_relation_name (int ) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;

char *
ColocationIdUpdateCommand(Oid relationId, uint32 colocationId)
{
 StringInfo command = makeStringInfo();
 char *qualifiedRelationName = generate_qualified_relation_name(relationId);
 appendStringInfo(command, "UPDATE pg_dist_partition "
         "SET colocationid = %d "
         "WHERE logicalrelid = %s::regclass",
      colocationId, quote_literal_cstr(qualifiedRelationName));

 return command->data;
}
