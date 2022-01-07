
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint64_t ;
typedef scalar_t__ cothread_t ;


 scalar_t__ memalign (int,unsigned int) ;
 scalar_t__ posix_memalign (scalar_t__*,int,unsigned int) ;

cothread_t co_create(unsigned int size, void (*entrypoint)(void))
{
   size = (size + 1023) & ~1023;
   cothread_t handle = 0;




   handle = memalign(1024, size + 512);


   if (!handle)
      return handle;

   uint64_t *ptr = (uint64_t*)handle;

   ptr[0] = 0;
   ptr[1] = 0;
   ptr[2] = 0;
   ptr[3] = 0;
   ptr[4] = 0;
   ptr[5] = 0;
   ptr[6] = 0;
   ptr[7] = 0;
   ptr[8] = 0;
   ptr[9] = 0;
   ptr[10] = 0;
   ptr[11] = 0;
   ptr[12] = 0;
   ptr[13] = 0;
   ptr[14] = 0;
   ptr[15] = 0;
   ptr[16] = 0;
   ptr[17] = 0;
   ptr[18] = 0;
   ptr[20] = (uintptr_t)ptr + size + 512 - 16;
   ptr[19] = ptr[20];
   ptr[21] = (uintptr_t)entrypoint;
   return handle;
}
