
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;
typedef int MultiConnection ;


 int FinishConnectionEstablishment (int *) ;
 int * StartNodeUserDatabaseConnection (int ,char const*,int ,char const*,char const*) ;

MultiConnection *
GetNodeUserDatabaseConnection(uint32 flags, const char *hostname, int32 port, const
         char *user, const char *database)
{
 MultiConnection *connection;

 connection = StartNodeUserDatabaseConnection(flags, hostname, port, user, database);

 FinishConnectionEstablishment(connection);

 return connection;
}
