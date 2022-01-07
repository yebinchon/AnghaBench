
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;


 scalar_t__ AllowNonIdleTransactionOnXactHandling () ;
 scalar_t__ PQTRANS_IDLE ;
 scalar_t__ PQtransactionStatus (int ) ;

__attribute__((used)) static bool
RemoteTransactionIdle(MultiConnection *connection)
{






 if (AllowNonIdleTransactionOnXactHandling())
 {
  return 1;
 }

 return PQtransactionStatus(connection->pgConn) == PQTRANS_IDLE;
}
