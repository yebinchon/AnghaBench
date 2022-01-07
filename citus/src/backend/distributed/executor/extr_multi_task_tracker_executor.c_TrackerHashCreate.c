
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
typedef int TaskTracker ;
struct TYPE_4__ {int entrysize; int hcxt; int hash; scalar_t__ keysize; } ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;


 int CurrentMemoryContext ;
 int ERRCODE_OUT_OF_MEMORY ;
 int FATAL ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 scalar_t__ WORKER_LENGTH ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * hash_create (char const*,int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int tag_hash ;

__attribute__((used)) static HTAB *
TrackerHashCreate(const char *taskTrackerHashName, uint32 taskTrackerHashSize)
{
 HASHCTL info;
 int hashFlags = 0;
 HTAB *taskTrackerHash = ((void*)0);

 memset(&info, 0, sizeof(info));
 info.keysize = WORKER_LENGTH + sizeof(uint32);
 info.entrysize = sizeof(TaskTracker);
 info.hash = tag_hash;
 info.hcxt = CurrentMemoryContext;
 hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);

 taskTrackerHash = hash_create(taskTrackerHashName, taskTrackerHashSize,
          &info, hashFlags);
 if (taskTrackerHash == ((void*)0))
 {
  ereport(FATAL, (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("could not initialize task tracker hash")));
 }

 return taskTrackerHash;
}
