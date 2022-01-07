
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SceUID ;
typedef scalar_t__ SceKernelMemBlockType ;


 unsigned int ALIGN (unsigned int,int) ;
 scalar_t__ SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW ;
 scalar_t__ sceGxmMapMemory (void*,unsigned int,unsigned int) ;
 scalar_t__ sceKernelAllocMemBlock (char*,scalar_t__,unsigned int,int *) ;
 scalar_t__ sceKernelGetMemBlockBase (scalar_t__,void**) ;

void *gpu_alloc(SceKernelMemBlockType type, unsigned int size, unsigned int alignment, unsigned int attribs, SceUID *uid)
{
 void *mem;

 if (type == SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW)
  size = ALIGN(size, 256*1024);
   else
  size = ALIGN(size, 4*1024);

 *uid = sceKernelAllocMemBlock("gpu_mem", type, size, ((void*)0));

 if (*uid < 0)
  return ((void*)0);

 if (sceKernelGetMemBlockBase(*uid, &mem) < 0)
  return ((void*)0);

 if (sceGxmMapMemory(mem, size, attribs) < 0)
  return ((void*)0);

 return mem;
}
