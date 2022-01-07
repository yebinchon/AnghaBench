
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;
typedef int MultiConnection ;


 scalar_t__ ConnectionUsedForAnyPlacements (int *) ;
 int FORCE_NEW_CONNECTION ;
 int * StartNodeConnection (int ,char const*,int ) ;

MultiConnection *
StartNonDataAccessConnection(const char *hostname, int32 port)
{
 uint32 flags = 0;
 MultiConnection *connection = StartNodeConnection(flags, hostname, port);

 if (ConnectionUsedForAnyPlacements(connection))
 {
  flags = FORCE_NEW_CONNECTION;

  connection = StartNodeConnection(flags, hostname, port);
 }

 return connection;
}
