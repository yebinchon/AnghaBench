
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceUID ;


 unsigned int ALIGN (unsigned int,int) ;
 int SCE_KERNEL_MEMBLOCK_TYPE_USER_RW_UNCACHE ;
 scalar_t__ sceGxmMapVertexUsseMemory (void*,unsigned int,unsigned int*) ;
 int sceKernelAllocMemBlock (char*,int ,unsigned int,int *) ;
 scalar_t__ sceKernelGetMemBlockBase (int ,void**) ;

void *vertex_usse_alloc(unsigned int size, SceUID *uid, unsigned int *usse_offset)
{
 void *mem = ((void*)0);

 size = ALIGN(size, 4096);
 *uid = sceKernelAllocMemBlock("vertex_usse", SCE_KERNEL_MEMBLOCK_TYPE_USER_RW_UNCACHE, size, ((void*)0));

 if (sceKernelGetMemBlockBase(*uid, &mem) < 0)
  return ((void*)0);
 if (sceGxmMapVertexUsseMemory(mem, size, usse_offset) < 0)
  return ((void*)0);

 return mem;
}
