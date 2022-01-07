
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; int hostname; int user; } ;
typedef TYPE_1__ MultiConnection ;


 int ApplyLogRedaction (char const*) ;
 int LOG ;
 int LogRemoteCommands ;
 int ereport (int ,int ) ;
 int errdetail (char*,int ,int ,int ) ;
 int errmsg (char*,int ) ;

void
LogRemoteCommand(MultiConnection *connection, const char *command)
{
 if (!LogRemoteCommands)
 {
  return;
 }

 ereport(LOG, (errmsg("issuing %s", ApplyLogRedaction(command)),
      errdetail("on server %s@%s:%d", connection->user, connection->hostname,
       connection->port)));
}
