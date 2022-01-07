
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ ROUNDUP32 (scalar_t__) ;
 scalar_t__ SYS_GetArena2Hi () ;
 scalar_t__ SYS_GetArena2Size () ;
 int SYS_SetArena2Hi (void*) ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 int __lwp_heap_init (int *,void*,scalar_t__,int) ;
 int gx_mem2_heap ;

bool gx_init_mem2(void)
{
   void *heap_ptr;
   uint32_t level, size;
   _CPU_ISR_Disable(level);
   size = SYS_GetArena2Size() - 1024 * 256;

   heap_ptr = (void *) ROUNDUP32(((uint32_t) SYS_GetArena2Hi() - size));

   SYS_SetArena2Hi(heap_ptr);
   __lwp_heap_init(&gx_mem2_heap, heap_ptr, size, 32);
   _CPU_ISR_Restore(level);

   return 1;
}
