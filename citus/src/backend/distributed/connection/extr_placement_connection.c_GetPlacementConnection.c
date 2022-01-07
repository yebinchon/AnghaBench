
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int ShardPlacement ;
typedef int MultiConnection ;


 int FinishConnectionEstablishment (int *) ;
 int * StartPlacementConnection (int ,int *,char const*) ;

MultiConnection *
GetPlacementConnection(uint32 flags, ShardPlacement *placement, const char *userName)
{
 MultiConnection *connection = StartPlacementConnection(flags, placement, userName);

 FinishConnectionEstablishment(connection);
 return connection;
}
