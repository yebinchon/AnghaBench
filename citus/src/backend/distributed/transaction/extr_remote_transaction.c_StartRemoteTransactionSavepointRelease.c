
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef int SubTransactionId ;
typedef TYPE_1__* StringInfo ;
typedef int MultiConnection ;


 int HandleRemoteTransactionConnectionError (int *,int const) ;
 int SendRemoteCommand (int *,int ) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static void
StartRemoteTransactionSavepointRelease(MultiConnection *connection,
            SubTransactionId subId)
{
 const bool raiseErrors = 1;
 StringInfo savepointCommand = makeStringInfo();
 appendStringInfo(savepointCommand, "RELEASE SAVEPOINT savepoint_%u", subId);

 if (!SendRemoteCommand(connection, savepointCommand->data))
 {
  HandleRemoteTransactionConnectionError(connection, raiseErrors);
 }
}
