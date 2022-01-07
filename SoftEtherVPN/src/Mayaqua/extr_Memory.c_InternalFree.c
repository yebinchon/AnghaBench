
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KS_CURRENT_MEM_COUNT ;
 int KS_DEC (int ) ;
 int KS_FREE_COUNT ;
 int KS_INC (int ) ;
 int OSMemoryFree (void*) ;
 int POINTER_TO_UINT64 (void*) ;
 int TrackDeleteObj (int ) ;

void InternalFree(void *addr)
{

 if (addr == ((void*)0))
 {
  return;
 }


 KS_DEC(KS_CURRENT_MEM_COUNT);
 KS_INC(KS_FREE_COUNT);

 TrackDeleteObj(POINTER_TO_UINT64(addr));


 OSMemoryFree(addr);
}
