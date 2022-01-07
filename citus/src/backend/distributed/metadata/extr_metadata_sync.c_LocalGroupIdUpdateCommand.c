
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static char *
LocalGroupIdUpdateCommand(int32 groupId)
{
 StringInfo updateCommand = makeStringInfo();

 appendStringInfo(updateCommand, "UPDATE pg_dist_local_group SET groupid = %d",
      groupId);

 return updateCommand->data;
}
