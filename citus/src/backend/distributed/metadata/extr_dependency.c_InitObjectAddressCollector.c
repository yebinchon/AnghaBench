
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int info ;
struct TYPE_7__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_6__ {void* visitedObjects; int * dependencyList; void* dependencySet; } ;
typedef TYPE_1__ ObjectAddressCollector ;
typedef int ObjectAddress ;
typedef TYPE_2__ HASHCTL ;


 int CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 void* hash_create (char*,int,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
InitObjectAddressCollector(ObjectAddressCollector *collector)
{
 int hashFlags = 0;
 HASHCTL info;

 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(ObjectAddress);
 info.entrysize = sizeof(ObjectAddress);
 info.hcxt = CurrentMemoryContext;
 hashFlags = (HASH_ELEM | HASH_CONTEXT | HASH_BLOBS);

 collector->dependencySet = hash_create("dependency set", 128, &info, hashFlags);
 collector->dependencyList = ((void*)0);

 collector->visitedObjects = hash_create("visited object set", 128, &info, hashFlags);
}
