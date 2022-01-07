
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_3__ {int jobId; int owner; } ;
typedef int ResourceOwner ;
typedef TYPE_1__ JobDirectoryEntry ;


 int Assert (int) ;
 int NumAllocatedJobDirectories ;
 int NumRegisteredJobDirectories ;
 TYPE_1__* RegisteredJobDirectories ;

void
ResourceOwnerRememberJobDirectory(ResourceOwner owner, uint64 jobId)
{
 JobDirectoryEntry *entry = ((void*)0);

 Assert(NumRegisteredJobDirectories + 1 <= NumAllocatedJobDirectories);
 entry = &RegisteredJobDirectories[NumRegisteredJobDirectories];
 entry->owner = owner;
 entry->jobId = jobId;
 NumRegisteredJobDirectories++;
}
