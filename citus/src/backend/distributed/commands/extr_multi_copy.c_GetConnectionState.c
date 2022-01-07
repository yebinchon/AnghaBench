
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int socket; int bufferedPlacementList; int * activePlacementState; TYPE_1__* connection; } ;
struct TYPE_5__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;
typedef int HTAB ;
typedef TYPE_2__ CopyConnectionState ;


 int Assert (int) ;
 int HASH_ENTER ;
 int PQsocket (int ) ;
 int dlist_init (int *) ;
 scalar_t__ hash_search (int *,int*,int ,int*) ;

__attribute__((used)) static CopyConnectionState *
GetConnectionState(HTAB *connectionStateHash, MultiConnection *connection)
{
 CopyConnectionState *connectionState = ((void*)0);
 bool found = 0;

 int sock = PQsocket(connection->pgConn);
 Assert(sock != -1);

 connectionState = (CopyConnectionState *) hash_search(connectionStateHash, &sock,
                HASH_ENTER, &found);
 if (!found)
 {
  connectionState->socket = sock;
  connectionState->connection = connection;
  connectionState->activePlacementState = ((void*)0);
  dlist_init(&connectionState->bufferedPlacementList);
 }

 return connectionState;
}
