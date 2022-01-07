
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
typedef int dlist_head ;
struct TYPE_13__ {int connections; } ;
struct TYPE_12__ {int database; int user; int port; int hostname; } ;
struct TYPE_11__ {int connectionNode; } ;
typedef TYPE_1__ MultiConnection ;
typedef TYPE_2__ ConnectionHashKey ;
typedef TYPE_3__ ConnectionHashEntry ;


 scalar_t__ COORD_TRANS_IDLE ;
 scalar_t__ COORD_TRANS_NONE ;
 int ConnectionContext ;
 int ConnectionHash ;
 scalar_t__ CurrentCoordinatedTransactionState ;
 char const* CurrentDatabaseName () ;
 char const* CurrentUserName () ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int FORCE_NEW_CONNECTION ;
 TYPE_1__* FindAvailableConnection (int ,int) ;
 int HASH_ENTER ;
 scalar_t__ MAX_NODE_LENGTH ;
 int MemoryContextAlloc (int ,int) ;
 scalar_t__ NAMEDATALEN ;
 int ResetShardPlacementAssociation (TYPE_1__*) ;
 TYPE_1__* StartConnectionEstablishment (TYPE_2__*) ;
 int dlist_init (int ) ;
 int dlist_push_tail (int ,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;
 TYPE_3__* hash_search (int ,TYPE_2__*,int ,int*) ;
 int strlcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

MultiConnection *
StartNodeUserDatabaseConnection(uint32 flags, const char *hostname, int32 port, const
        char *user, const char *database)
{
 ConnectionHashKey key;
 ConnectionHashEntry *entry = ((void*)0);
 MultiConnection *connection;
 bool found;


 strlcpy(key.hostname, hostname, MAX_NODE_LENGTH);
 if (strlen(hostname) > MAX_NODE_LENGTH)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("hostname exceeds the maximum length of %d",
          MAX_NODE_LENGTH)));
 }

 key.port = port;
 if (user)
 {
  strlcpy(key.user, user, NAMEDATALEN);
 }
 else
 {
  strlcpy(key.user, CurrentUserName(), NAMEDATALEN);
 }
 if (database)
 {
  strlcpy(key.database, database, NAMEDATALEN);
 }
 else
 {
  strlcpy(key.database, CurrentDatabaseName(), NAMEDATALEN);
 }

 if (CurrentCoordinatedTransactionState == COORD_TRANS_NONE)
 {
  CurrentCoordinatedTransactionState = COORD_TRANS_IDLE;
 }







 entry = hash_search(ConnectionHash, &key, HASH_ENTER, &found);
 if (!found)
 {
  entry->connections = MemoryContextAlloc(ConnectionContext,
            sizeof(dlist_head));
  dlist_init(entry->connections);
 }


 if (!(flags & FORCE_NEW_CONNECTION))
 {

  connection = FindAvailableConnection(entry->connections, flags);
  if (connection)
  {
   return connection;
  }
 }





 connection = StartConnectionEstablishment(&key);

 dlist_push_tail(entry->connections, &connection->connectionNode);

 ResetShardPlacementAssociation(connection);

 return connection;
}
