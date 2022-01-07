
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_14__ {int pgConn; } ;
struct TYPE_13__ {scalar_t__ partitionMethod; } ;
typedef int ShardPlacementAccess ;
typedef TYPE_1__ ShardPlacement ;
typedef TYPE_2__ MultiConnection ;


 scalar_t__ CONNECTION_OK ;
 int CONNECTION_PER_PLACEMENT ;
 int ClaimConnectionExclusively (TYPE_2__*) ;
 int * CreatePlacementAccess (TYPE_1__*,int ) ;
 char* CurrentUserName () ;
 scalar_t__ DISTRIBUTE_BY_HASH ;
 int ERROR ;
 int FOR_DML ;
 TYPE_2__* GetConnectionIfPlacementAccessedInXact (int ,int ,int *) ;
 TYPE_2__* GetPlacementConnection (int ,TYPE_1__*,char*) ;
 int HandleRemoteTransactionConnectionError (TYPE_2__*,int const) ;
 int MarkRemoteTransactionCritical (TYPE_2__*) ;
 scalar_t__ MultiShardConnectionType ;
 int PLACEMENT_ACCESS_DML ;
 scalar_t__ PQstatus (int ) ;
 int ReportConnectionError (TYPE_2__*,int ) ;
 scalar_t__ SEQUENTIAL_CONNECTION ;
 int list_make1 (int *) ;

__attribute__((used)) static MultiConnection *
CopyGetPlacementConnection(ShardPlacement *placement, bool stopOnFailure)
{
 MultiConnection *connection = ((void*)0);
 uint32 connectionFlags = FOR_DML;
 char *nodeUser = CurrentUserName();
 ShardPlacementAccess *placementAccess = ((void*)0);





 placementAccess = CreatePlacementAccess(placement, PLACEMENT_ACCESS_DML);
 connection = GetConnectionIfPlacementAccessedInXact(connectionFlags,
              list_make1(placementAccess),
              ((void*)0));
 if (connection != ((void*)0))
 {
  return connection;
 }






 if (placement->partitionMethod == DISTRIBUTE_BY_HASH &&
  MultiShardConnectionType != SEQUENTIAL_CONNECTION)
 {
  connectionFlags |= CONNECTION_PER_PLACEMENT;
 }

 connection = GetPlacementConnection(connectionFlags, placement, nodeUser);

 if (PQstatus(connection->pgConn) != CONNECTION_OK)
 {
  if (stopOnFailure)
  {
   ReportConnectionError(connection, ERROR);
  }
  else
  {
   const bool raiseErrors = 1;

   HandleRemoteTransactionConnectionError(connection, raiseErrors);

   return ((void*)0);
  }
 }






 MarkRemoteTransactionCritical(connection);

 if (MultiShardConnectionType != SEQUENTIAL_CONNECTION)
 {
  ClaimConnectionExclusively(connection);
 }

 return connection;
}
