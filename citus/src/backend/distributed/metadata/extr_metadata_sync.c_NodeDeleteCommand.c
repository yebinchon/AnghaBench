
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;

char *
NodeDeleteCommand(uint32 nodeId)
{
 StringInfo nodeDeleteCommand = makeStringInfo();

 appendStringInfo(nodeDeleteCommand,
      "DELETE FROM pg_dist_node "
      "WHERE nodeid = %u", nodeId);

 return nodeDeleteCommand->data;
}
