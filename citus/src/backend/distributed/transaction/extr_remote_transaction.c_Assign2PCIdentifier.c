
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
struct TYPE_4__ {int preparedName; } ;
struct TYPE_5__ {TYPE_1__ remoteTransaction; } ;
typedef TYPE_2__ MultiConnection ;


 int CurrentDistributedTransactionNumber () ;
 int GetLocalGroupId () ;
 int MyProcPid ;
 int NAMEDATALEN ;
 char* PREPARED_TRANSACTION_NAME_FORMAT ;
 int snprintf (int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
Assign2PCIdentifier(MultiConnection *connection)
{

 static uint32 connectionNumber = 0;


 uint64 transactionNumber = CurrentDistributedTransactionNumber();


 snprintf(connection->remoteTransaction.preparedName, NAMEDATALEN,
    PREPARED_TRANSACTION_NAME_FORMAT, GetLocalGroupId(), MyProcPid,
    transactionNumber, connectionNumber++);
}
