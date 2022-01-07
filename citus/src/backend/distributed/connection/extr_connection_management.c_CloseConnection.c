
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int database; int user; int port; int hostname; } ;
struct TYPE_8__ {int connectionNode; int database; int user; int port; int hostname; int * pgConn; } ;
typedef TYPE_1__ MultiConnection ;
typedef TYPE_2__ ConnectionHashKey ;


 int CloseRemoteTransaction (TYPE_1__*) ;
 int CloseShardPlacementAssociation (TYPE_1__*) ;
 int ConnectionHash ;
 int ERROR ;
 int HASH_FIND ;
 int MAX_NODE_LENGTH ;
 int NAMEDATALEN ;
 int PQfinish (int *) ;
 int dlist_delete (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int hash_search (int ,TYPE_2__*,int ,int*) ;
 int pfree (TYPE_1__*) ;
 int strlcpy (int ,int ,int ) ;

void
CloseConnection(MultiConnection *connection)
{
 ConnectionHashKey key;
 bool found;


 PQfinish(connection->pgConn);
 connection->pgConn = ((void*)0);

 strlcpy(key.hostname, connection->hostname, MAX_NODE_LENGTH);
 key.port = connection->port;
 strlcpy(key.user, connection->user, NAMEDATALEN);
 strlcpy(key.database, connection->database, NAMEDATALEN);

 hash_search(ConnectionHash, &key, HASH_FIND, &found);

 if (found)
 {

  dlist_delete(&connection->connectionNode);


  CloseRemoteTransaction(connection);
  CloseShardPlacementAssociation(connection);


  pfree(connection);
 }
 else
 {
  ereport(ERROR, (errmsg("closing untracked connection")));
 }
}
