
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int CitusExtensionOwner () ;
 int ERROR ;
 int GetUserIdAndSecContext (int *,int*) ;
 int InvalidOid ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SPI_OK_CONNECT ;
 int SPI_OK_FINISH ;
 int SPI_connect () ;
 int SPI_execute_with_args (char*,int,int *,int *,int *,int,int ) ;
 int SPI_finish () ;
 int SetUserIdAndSecContext (int ,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static int
ExecuteCommandAsSuperuser(char *query, int paramCount, Oid *paramTypes,
        Datum *paramValues)
{
 int spiConnected = 0;
 Oid savedUserId = InvalidOid;
 int savedSecurityContext = 0;
 int spiStatus = 0;
 int spiFinished = 0;

 spiConnected = SPI_connect();
 if (spiConnected != SPI_OK_CONNECT)
 {
  ereport(ERROR, (errmsg("could not connect to SPI manager")));
 }


 GetUserIdAndSecContext(&savedUserId, &savedSecurityContext);
 SetUserIdAndSecContext(CitusExtensionOwner(), SECURITY_LOCAL_USERID_CHANGE);

 spiStatus = SPI_execute_with_args(query, paramCount, paramTypes, paramValues,
           ((void*)0), 0, 0);

 SetUserIdAndSecContext(savedUserId, savedSecurityContext);

 spiFinished = SPI_finish();
 if (spiFinished != SPI_OK_FINISH)
 {
  ereport(ERROR, (errmsg("could not disconnect from SPI manager")));
 }

 return spiStatus;
}
