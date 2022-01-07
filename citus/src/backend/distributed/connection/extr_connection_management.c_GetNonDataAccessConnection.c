
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int MultiConnection ;


 int FinishConnectionEstablishment (int *) ;
 int * StartNonDataAccessConnection (char const*,int ) ;

MultiConnection *
GetNonDataAccessConnection(const char *hostname, int32 port)
{
 MultiConnection *connection;

 connection = StartNonDataAccessConnection(hostname, port);

 FinishConnectionEstablishment(connection);

 return connection;
}
