
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int preparedName; } ;
struct TYPE_9__ {int port; int hostname; TYPE_2__ remoteTransaction; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ RemoteTransaction ;
typedef TYPE_3__ MultiConnection ;


 int WARNING ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int ereport (int ,int ) ;
 int errhint (char*,int ,int ,int ) ;
 int errmsg (char*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int quote_literal_cstr (int ) ;

__attribute__((used)) static void
WarnAboutLeakedPreparedTransaction(MultiConnection *connection, bool commit)
{
 StringInfoData command;
 RemoteTransaction *transaction = &connection->remoteTransaction;

 initStringInfo(&command);

 if (commit)
 {
  appendStringInfo(&command, "COMMIT PREPARED %s",
       quote_literal_cstr(transaction->preparedName));
 }
 else
 {
  appendStringInfo(&command, "ROLLBACK PREPARED %s",
       quote_literal_cstr(transaction->preparedName));
 }


 ereport(WARNING, (errmsg("failed to roll back prepared transaction '%s'",
        transaction->preparedName),
       errhint("Run \"%s\" on %s:%u",
         command.data, connection->hostname, connection->port)));
}
