
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ owner; int jobId; } ;
typedef scalar_t__ ResourceReleasePhase ;
typedef TYPE_1__ JobDirectoryEntry ;


 scalar_t__ CurrentResourceOwner ;
 int NumRegisteredJobDirectories ;
 scalar_t__ RESOURCE_RELEASE_AFTER_LOCKS ;
 TYPE_1__* RegisteredJobDirectories ;
 int RemoveJobDirectory (int ) ;

__attribute__((used)) static void
MultiResourceOwnerReleaseCallback(ResourceReleasePhase phase,
          bool isCommit,
          bool isTopLevel,
          void *arg)
{
 int lastJobIndex = NumRegisteredJobDirectories - 1;
 int jobIndex = 0;

 if (phase == RESOURCE_RELEASE_AFTER_LOCKS)
 {




  for (jobIndex = lastJobIndex; jobIndex >= 0; jobIndex--)
  {
   JobDirectoryEntry *entry = &RegisteredJobDirectories[jobIndex];

   if (entry->owner == CurrentResourceOwner)
   {
    RemoveJobDirectory(entry->jobId);
   }
  }
 }
}
