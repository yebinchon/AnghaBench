
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; int hostname; int pgConn; } ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;


 int ApplyLogRedaction (char*) ;
 int ERRCODE_IO_ERROR ;
 int ERROR ;
 int PG_DIAG_MESSAGE_DETAIL ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PQerrorMessage (int ) ;
 char* PQresultErrorField (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errmsg (char*,char*,...) ;
 char* pchomp (int ) ;

__attribute__((used)) static void
ReportCopyError(MultiConnection *connection, PGresult *result)
{
 char *remoteMessage = PQresultErrorField(result, PG_DIAG_MESSAGE_PRIMARY);

 if (remoteMessage != ((void*)0))
 {

  char *remoteDetail = PQresultErrorField(result, PG_DIAG_MESSAGE_DETAIL);
  bool haveDetail = remoteDetail != ((void*)0);

  ereport(ERROR, (errmsg("%s", remoteMessage),
      haveDetail ? errdetail("%s", ApplyLogRedaction(remoteDetail)) :
      0));
 }
 else
 {

  remoteMessage = pchomp(PQerrorMessage(connection->pgConn));

  ereport(ERROR, (errcode(ERRCODE_IO_ERROR),
      errmsg("failed to complete COPY on %s:%d", connection->hostname,
          connection->port),
      errdetail("%s", ApplyLogRedaction(remoteMessage))));
 }
}
