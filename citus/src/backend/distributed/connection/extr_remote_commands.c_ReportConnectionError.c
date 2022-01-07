
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* hostname; int port; int * pgConn; } ;
typedef int PGconn ;
typedef TYPE_1__ MultiConnection ;


 int ApplyLogRedaction (char*) ;
 int ERRCODE_CONNECTION_FAILURE ;
 int PQerrorMessage (int *) ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errmsg (char*,char*,int) ;
 char* pchomp (int ) ;

void
ReportConnectionError(MultiConnection *connection, int elevel)
{
 char *nodeName = connection->hostname;
 int nodePort = connection->port;
 PGconn *pgConn = connection->pgConn;
 char *messageDetail = ((void*)0);

 if (pgConn != ((void*)0))
 {
  messageDetail = pchomp(PQerrorMessage(pgConn));
 }

 ereport(elevel, (errcode(ERRCODE_CONNECTION_FAILURE),
      errmsg("connection error: %s:%d", nodeName, nodePort),
      messageDetail != ((void*)0) ?
      errdetail("%s", ApplyLogRedaction(messageDetail)) : 0));
}
