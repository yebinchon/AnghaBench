
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int AbortExitEx (char*) ;
 int KS_ADD (int ,scalar_t__) ;
 int KS_CURRENT_MEM_COUNT ;
 int KS_INC (int ) ;
 int KS_MALLOC_COUNT ;
 int KS_TOTAL_MEM_COUNT ;
 int KS_TOTAL_MEM_SIZE ;
 scalar_t__ MEMORY_MAX_RETRY ;
 int MEMORY_SLEEP_TIME ;
 scalar_t__ MORE (scalar_t__,int) ;
 void* OSMemoryAlloc (scalar_t__) ;
 int OSSleep (int ) ;
 int POINTER_TO_UINT64 (void*) ;
 int TrackNewObj (int ,char*,scalar_t__) ;

void *InternalMalloc(UINT size)
{
 void *addr;
 UINT retry = 0;
 size = MORE(size, 1);


 KS_INC(KS_MALLOC_COUNT);
 KS_INC(KS_TOTAL_MEM_COUNT);
 KS_ADD(KS_TOTAL_MEM_SIZE, size);
 KS_INC(KS_CURRENT_MEM_COUNT);


 while (1)
 {
  if ((retry++) > MEMORY_MAX_RETRY)
  {
   AbortExitEx("InternalMalloc: error: malloc() failed.\n\n");
  }
  addr = OSMemoryAlloc(size);
  if (addr != ((void*)0))
  {
   break;
  }

  OSSleep(MEMORY_SLEEP_TIME);
 }

 TrackNewObj(POINTER_TO_UINT64(addr), "MEM", size);

 return addr;
}
