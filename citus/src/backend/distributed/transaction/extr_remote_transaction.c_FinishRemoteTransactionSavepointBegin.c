
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubTransactionId ;
typedef int PGresult ;
typedef int MultiConnection ;


 int ForgetResults (int *) ;
 int * GetRemoteCommandResult (int *,int const) ;
 int HandleRemoteTransactionResultError (int *,int *,int const) ;
 int IsResponseOK (int *) ;
 int PQclear (int *) ;

__attribute__((used)) static void
FinishRemoteTransactionSavepointBegin(MultiConnection *connection, SubTransactionId subId)
{
 const bool raiseErrors = 1;
 PGresult *result = GetRemoteCommandResult(connection, raiseErrors);
 if (!IsResponseOK(result))
 {
  HandleRemoteTransactionResultError(connection, result, raiseErrors);
 }

 PQclear(result);
 ForgetResults(connection);
}
