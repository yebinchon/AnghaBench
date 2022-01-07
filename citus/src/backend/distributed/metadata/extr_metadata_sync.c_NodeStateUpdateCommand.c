
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
NodeStateUpdateCommand(uint32 nodeId, bool isActive)
{
 StringInfo nodeStateUpdateCommand = makeStringInfo();
 char *isActiveString = isActive ? "TRUE" : "FALSE";

 appendStringInfo(nodeStateUpdateCommand,
      "UPDATE pg_dist_node SET isactive = %s "
      "WHERE nodeid = %u", isActiveString, nodeId);

 return nodeStateUpdateCommand->data;
}
