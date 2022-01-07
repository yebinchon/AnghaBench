
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int isValid; scalar_t__ values; scalar_t__ keywords; int runtimeParamStart; } ;
struct TYPE_13__ {int user; int database; int port; int hostname; } ;
struct TYPE_12__ {int pgConn; int connectionStart; int user; int database; int port; int hostname; } ;
typedef TYPE_1__ MultiConnection ;
typedef TYPE_2__ ConnectionHashKey ;
typedef TYPE_3__ ConnParamsHashEntry ;


 int ConnParamsHash ;
 int ConnectionContext ;
 int FreeConnParamsHashEntryFields (TYPE_3__*) ;
 int GetConnParams (TYPE_2__*,scalar_t__*,scalar_t__*,int *,int ) ;
 int GetCurrentTimestamp () ;
 int HASH_ENTER ;
 int MAX_NODE_LENGTH ;
 TYPE_1__* MemoryContextAllocZero (int ,int) ;
 int NAMEDATALEN ;
 int PQconnectStartParams (char const**,char const**,int) ;
 int PQsetnonblocking (int ,int) ;
 int SetCitusNoticeProcessor (TYPE_1__*) ;
 TYPE_3__* hash_search (int ,TYPE_2__*,int ,int*) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static MultiConnection *
StartConnectionEstablishment(ConnectionHashKey *key)
{
 bool found = 0;
 MultiConnection *connection = ((void*)0);
 ConnParamsHashEntry *entry = ((void*)0);


 entry = hash_search(ConnParamsHash, key, HASH_ENTER, &found);
 if (!found || !entry->isValid)
 {

  if (found && !entry->isValid)
  {
   FreeConnParamsHashEntryFields(entry);
  }


  GetConnParams(key, &entry->keywords, &entry->values, &entry->runtimeParamStart,
       ConnectionContext);

  entry->isValid = 1;
 }

 connection = MemoryContextAllocZero(ConnectionContext, sizeof(MultiConnection));

 strlcpy(connection->hostname, key->hostname, MAX_NODE_LENGTH);
 connection->port = key->port;
 strlcpy(connection->database, key->database, NAMEDATALEN);
 strlcpy(connection->user, key->user, NAMEDATALEN);


 connection->pgConn = PQconnectStartParams((const char **) entry->keywords,
             (const char **) entry->values,
             0);
 connection->connectionStart = GetCurrentTimestamp();






 PQsetnonblocking(connection->pgConn, 1);

 SetCitusNoticeProcessor(connection);

 return connection;
}
