
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {char* nodeName; int nodePort; } ;
struct TYPE_4__ {TYPE_2__* placement; } ;
typedef TYPE_1__ ShardPlacementAccess ;
typedef TYPE_2__ ShardPlacement ;
typedef int MultiConnection ;
typedef int List ;


 int Assert (int) ;
 int AssignPlacementListToConnection (int *,int *) ;
 int CONNECTION_PER_PLACEMENT ;
 scalar_t__ ConnectionAccessedDifferentPlacement (int *,TYPE_2__*) ;
 char* CurrentUserName () ;
 int FORCE_NEW_CONNECTION ;
 int * FindPlacementListConnection (int,int *,char const*) ;
 int * StartNodeUserDatabaseConnection (int,char*,int,char const*,int *) ;
 scalar_t__ linitial (int *) ;
 int pfree (char*) ;

MultiConnection *
StartPlacementListConnection(uint32 flags, List *placementAccessList,
        const char *userName)
{
 char *freeUserName = ((void*)0);
 MultiConnection *chosenConnection = ((void*)0);

 if (userName == ((void*)0))
 {
  userName = freeUserName = CurrentUserName();
 }

 chosenConnection = FindPlacementListConnection(flags, placementAccessList, userName);
 if (chosenConnection == ((void*)0))
 {

  ShardPlacementAccess *placementAccess =
   (ShardPlacementAccess *) linitial(placementAccessList);
  ShardPlacement *placement = placementAccess->placement;
  char *nodeName = placement->nodeName;
  int nodePort = placement->nodePort;





  chosenConnection = StartNodeUserDatabaseConnection(flags, nodeName, nodePort,
                 userName, ((void*)0));

  if ((flags & CONNECTION_PER_PLACEMENT) &&
   ConnectionAccessedDifferentPlacement(chosenConnection, placement))
  {
   chosenConnection = StartNodeUserDatabaseConnection(flags |
                  FORCE_NEW_CONNECTION,
                  nodeName, nodePort,
                  userName, ((void*)0));

   Assert(!ConnectionAccessedDifferentPlacement(chosenConnection, placement));
  }
 }


 AssignPlacementListToConnection(placementAccessList, chosenConnection);

 if (freeUserName)
 {
  pfree(freeUserName);
 }

 return chosenConnection;
}
