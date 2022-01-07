
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* hostname; int port; int pgConn; } ;
typedef int PGresult ;
typedef TYPE_1__ MultiConnection ;


 int ApplyLogRedaction (char*) ;
 int ERRCODE_INTERNAL_ERROR ;
 int MAKE_SQLSTATE (char,char,char,char,char) ;
 int PG_CATCH () ;
 int PG_DIAG_CONTEXT ;
 int PG_DIAG_MESSAGE_DETAIL ;
 int PG_DIAG_MESSAGE_HINT ;
 int PG_DIAG_MESSAGE_PRIMARY ;
 int PG_DIAG_SQLSTATE ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 char* PQresultErrorField (int *,int ) ;
 int ereport (int,int ) ;
 int errcode (int) ;
 int errcontext (char*,char*,...) ;
 int errdetail (char*,int ) ;
 int errhint (char*,char*) ;
 int errmsg (char*,char*) ;
 char* pchomp (int ) ;

void
ReportResultError(MultiConnection *connection, PGresult *result, int elevel)
{

 PG_TRY();
 {
  char *sqlStateString = PQresultErrorField(result, PG_DIAG_SQLSTATE);
  char *messagePrimary = PQresultErrorField(result, PG_DIAG_MESSAGE_PRIMARY);
  char *messageDetail = PQresultErrorField(result, PG_DIAG_MESSAGE_DETAIL);
  char *messageHint = PQresultErrorField(result, PG_DIAG_MESSAGE_HINT);
  char *messageContext = PQresultErrorField(result, PG_DIAG_CONTEXT);

  char *nodeName = connection->hostname;
  int nodePort = connection->port;
  int sqlState = ERRCODE_INTERNAL_ERROR;

  if (sqlStateString != ((void*)0))
  {
   sqlState = MAKE_SQLSTATE(sqlStateString[0],
          sqlStateString[1],
          sqlStateString[2],
          sqlStateString[3],
          sqlStateString[4]);
  }





  if (messagePrimary == ((void*)0))
  {
   messagePrimary = pchomp(PQerrorMessage(connection->pgConn));
  }

  ereport(elevel, (errcode(sqlState), errmsg("%s", messagePrimary),
       messageDetail ?
       errdetail("%s", ApplyLogRedaction(messageDetail)) : 0,
       messageHint ? errhint("%s", messageHint) : 0,
       messageContext ? errcontext("%s", messageContext) : 0,
       errcontext("while executing command on %s:%d",
         nodeName, nodePort)));
 }
 PG_CATCH();
 {
  PQclear(result);
  PG_RE_THROW();
 }
 PG_END_TRY();
}
