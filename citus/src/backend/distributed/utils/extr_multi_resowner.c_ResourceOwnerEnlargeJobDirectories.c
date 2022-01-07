
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResourceOwner ;
typedef int JobDirectoryEntry ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MultiResourceOwnerReleaseCallback ;
 int NumAllocatedJobDirectories ;
 int NumRegisteredJobDirectories ;
 int RegisterResourceReleaseCallback (int ,int *) ;
 int * RegisteredJobDirectories ;
 int RegisteredResownerCallback ;
 int TopMemoryContext ;
 scalar_t__ repalloc (int *,int) ;

void
ResourceOwnerEnlargeJobDirectories(ResourceOwner owner)
{
 int newMax = 0;


 if (!RegisteredResownerCallback)
 {
  RegisterResourceReleaseCallback(MultiResourceOwnerReleaseCallback, ((void*)0));
  RegisteredResownerCallback = 1;
 }

 if (RegisteredJobDirectories == ((void*)0))
 {
  newMax = 16;
  RegisteredJobDirectories =
   (JobDirectoryEntry *) MemoryContextAlloc(TopMemoryContext,
              newMax * sizeof(JobDirectoryEntry));
  NumAllocatedJobDirectories = newMax;
 }
 else if (NumRegisteredJobDirectories + 1 > NumAllocatedJobDirectories)
 {
  newMax = NumAllocatedJobDirectories * 2;
  RegisteredJobDirectories =
   (JobDirectoryEntry *) repalloc(RegisteredJobDirectories,
             newMax * sizeof(JobDirectoryEntry));
  NumAllocatedJobDirectories = newMax;
 }
}
