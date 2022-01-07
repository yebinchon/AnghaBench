
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SceKernelMemBlockType ;


 scalar_t__ MemBlockType ;
 scalar_t__ SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW ;

void vita2d_texture_set_alloc_memblock_type(SceKernelMemBlockType type)
{
 MemBlockType = (type == 0) ? SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW : type;
}
