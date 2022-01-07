
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
struct TYPE_6__ {int keysize; int entrysize; int hcxt; int match; int hash; } ;
typedef TYPE_1__ HASHCTL ;
typedef int ConnectionHashKey ;
typedef int ConnectionHashEntry ;
typedef int ConnParamsHashEntry ;


 int ALLOCSET_DEFAULT_INITSIZE ;
 int ALLOCSET_DEFAULT_MAXSIZE ;
 int ALLOCSET_DEFAULT_MINSIZE ;
 int AllocSetContextCreateExtended (int ,char*,int ,int ,int ) ;
 void* ConnParamsHash ;
 int ConnectionContext ;
 void* ConnectionHash ;
 int ConnectionHashCompare ;
 int ConnectionHashHash ;
 int HASH_COMPARE ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int TopMemoryContext ;
 void* hash_create (char*,int,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
InitializeConnectionManagement(void)
{
 HASHCTL info, connParamsInfo;
 uint32 hashFlags = 0;






 ConnectionContext = AllocSetContextCreateExtended(TopMemoryContext,
               "Connection Context",
               ALLOCSET_DEFAULT_MINSIZE,
               ALLOCSET_DEFAULT_INITSIZE,
               ALLOCSET_DEFAULT_MAXSIZE);


 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(ConnectionHashKey);
 info.entrysize = sizeof(ConnectionHashEntry);
 info.hash = ConnectionHashHash;
 info.match = ConnectionHashCompare;
 info.hcxt = ConnectionContext;
 hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT | HASH_COMPARE);

 memcpy(&connParamsInfo, &info, sizeof(HASHCTL));
 connParamsInfo.entrysize = sizeof(ConnParamsHashEntry);

 ConnectionHash = hash_create("citus connection cache (host,port,user,database)",
         64, &info, hashFlags);

 ConnParamsHash = hash_create("citus connparams cache (host,port,user,database)",
         64, &connParamsInfo, hashFlags);
}
