
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pgConn; } ;
typedef TYPE_1__ MultiConnection ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PQTRANS_ACTIVE ;
 int PQfinish (int *) ;
 scalar_t__ PQstatus (int *) ;
 scalar_t__ PQtransactionStatus (int *) ;
 int SendCancelationRequest (TYPE_1__*) ;

void
ShutdownConnection(MultiConnection *connection)
{




 if (PQstatus(connection->pgConn) == CONNECTION_OK &&
  PQtransactionStatus(connection->pgConn) == PQTRANS_ACTIVE)
 {
  SendCancelationRequest(connection);
 }
 PQfinish(connection->pgConn);
 connection->pgConn = ((void*)0);
}
