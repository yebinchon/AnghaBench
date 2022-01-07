
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
typedef int TaskMapKey ;
typedef int TaskMapEntry ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; int hash; } ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;


 int CurrentMemoryContext ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int * hash_create (char const*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int tag_hash ;

__attribute__((used)) static HTAB *
TaskHashCreate(uint32 taskHashSize)
{
 HASHCTL info;
 const char *taskHashName = "Task Hash";
 int hashFlags = 0;
 HTAB *taskHash = ((void*)0);





 if (taskHashSize == 0)
 {
  taskHashSize = 2;
 }

 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(TaskMapKey);
 info.entrysize = sizeof(TaskMapEntry);
 info.hash = tag_hash;
 info.hcxt = CurrentMemoryContext;
 hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);

 taskHash = hash_create(taskHashName, taskHashSize, &info, hashFlags);

 return taskHash;
}
