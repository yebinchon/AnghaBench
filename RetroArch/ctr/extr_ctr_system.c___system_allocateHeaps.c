
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; int base_addr; } ;
typedef int PageInfo ;
typedef TYPE_1__ MemInfo ;


 int MEMOP_ALLOC ;
 int MEMOP_ALLOC_LINEAR ;
 int MEMPERM_READ ;
 int MEMPERM_WRITE ;
 int __heapBase ;
 scalar_t__ __heap_size ;
 int __linear_heap ;
 int __linear_heap_size ;
 int __stack_bottom ;
 int __stack_size_extra ;
 int __stacksize__ ;
 int memset (void*,int,int) ;
 int svcControlMemory (int *,int,int,int,int ,int) ;
 int svcQueryMemory (TYPE_1__*,int *,int ) ;

void __system_allocateHeaps(void)
{
   extern char* fake_heap_end;
   u32 tmp = 0;

   MemInfo stack_memInfo;
   PageInfo stack_pageInfo;

   register u32 sp_val __asm__("sp");

   svcQueryMemory(&stack_memInfo, &stack_pageInfo, sp_val);

   __stacksize__ += 0xFFF;
   __stacksize__ &= ~0xFFF;
   __stack_size_extra = __stacksize__ > stack_memInfo.size ? __stacksize__ - stack_memInfo.size : 0;
   __stack_bottom = stack_memInfo.base_addr - __stack_size_extra;

   if (__stack_size_extra)
   {
      svcControlMemory(&tmp, __stack_bottom, 0x0, __stack_size_extra, MEMOP_ALLOC, MEMPERM_READ | MEMPERM_WRITE);
      memset((void*)__stack_bottom, 0xFC, __stack_size_extra);
   }


   __heapBase = 0x08000000;
   __heap_size = 0;


   svcControlMemory(&__linear_heap, 0x0, 0x0, __linear_heap_size, MEMOP_ALLOC_LINEAR, MEMPERM_READ | MEMPERM_WRITE);


   fake_heap_end = (char*)0x13F00000;
}
