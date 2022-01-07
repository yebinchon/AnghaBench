
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MEMOP_FREE ;
 int __heapBase ;
 scalar_t__ __heap_size ;
 int __linear_heap ;
 scalar_t__ __linear_heap_size ;
 int __stack_bottom ;
 scalar_t__ __stack_size_extra ;
 int __sync_fini () ;
 scalar_t__ __system_argv ;
 int __system_retAddr () ;
 int envDestroyHandles () ;
 int free (scalar_t__) ;
 int svcControlMemory (int *,int ,int,scalar_t__,int ,int) ;
 int svcExitProcess () ;

void __attribute__((noreturn)) __libctru_exit(int rc)
{
   u32 tmp = 0;

   if (__system_argv)
      free(__system_argv);


   svcControlMemory(&tmp, __linear_heap, 0x0, __linear_heap_size, MEMOP_FREE, 0x0);


   svcControlMemory(&tmp, __heapBase, 0x0, __heap_size, MEMOP_FREE, 0x0);

   if (__stack_size_extra)
      svcControlMemory(&tmp, __stack_bottom, 0x0, __stack_size_extra, MEMOP_FREE, 0x0);


   envDestroyHandles();

   if (__sync_fini)
      __sync_fini();


   if (__system_retAddr)
      __system_retAddr();


   svcExitProcess();
}
