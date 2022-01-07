
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;

char *
ShouldHaveShardsUpdateCommand(uint32 nodeId, bool shouldHaveShards)
{
 StringInfo nodeStateUpdateCommand = makeStringInfo();
 char *shouldHaveShardsString = shouldHaveShards ? "TRUE" : "FALSE";

 appendStringInfo(nodeStateUpdateCommand,
      "UPDATE pg_catalog.pg_dist_node SET shouldhaveshards = %s "
      "WHERE nodeid = %u", shouldHaveShardsString, nodeId);

 return nodeStateUpdateCommand->data;
}
