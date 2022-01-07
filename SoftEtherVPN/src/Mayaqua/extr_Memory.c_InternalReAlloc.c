
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int AbortExitEx (char*) ;
 int KS_ADD (int ,scalar_t__) ;
 int KS_INC (int ) ;
 int KS_REALLOC_COUNT ;
 int KS_TOTAL_MEM_SIZE ;
 scalar_t__ MEMORY_MAX_RETRY ;
 int MEMORY_SLEEP_TIME ;
 scalar_t__ MORE (scalar_t__,int) ;
 void* OSMemoryReAlloc (void*,scalar_t__) ;
 int OSSleep (int ) ;
 int POINTER_TO_UINT64 (void*) ;
 int TrackChangeObjSize (int ,scalar_t__,int ) ;

void *InternalReAlloc(void *addr, UINT size)
{
 void *new_addr;
 UINT retry = 0;
 size = MORE(size, 1);


 KS_INC(KS_REALLOC_COUNT);
 KS_ADD(KS_TOTAL_MEM_SIZE, size);


 while (1)
 {
  if ((retry++) > MEMORY_MAX_RETRY)
  {
   AbortExitEx("InternalReAlloc: error: realloc() failed.\n\n");
  }
  new_addr = OSMemoryReAlloc(addr, size);
  if (new_addr != ((void*)0))
  {
   break;
  }

  OSSleep(MEMORY_SLEEP_TIME);
 }

 TrackChangeObjSize(POINTER_TO_UINT64(addr), size, POINTER_TO_UINT64(new_addr));

 return new_addr;
}
