
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SceKernelLwMutexWork {int dummy; } ;


 scalar_t__ _newlib_heap_base ;
 scalar_t__ _newlib_heap_cur ;
 scalar_t__ _newlib_heap_memblock ;
 scalar_t__ _newlib_sbrk_mutex ;
 scalar_t__ _newlib_vm_memblock ;
 int sceKernelDeleteLwMutex (struct SceKernelLwMutexWork*) ;
 int sceKernelFreeMemBlock (scalar_t__) ;

void _free_vita_heap(void) {


 sceKernelDeleteLwMutex((struct SceKernelLwMutexWork*)_newlib_sbrk_mutex);


 sceKernelFreeMemBlock(_newlib_heap_memblock);

 if(_newlib_vm_memblock)
   sceKernelFreeMemBlock(_newlib_vm_memblock);

 _newlib_vm_memblock = 0;
 _newlib_heap_memblock = 0;
 _newlib_heap_base = 0;
 _newlib_heap_cur = 0;
}
