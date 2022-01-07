
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int block ;
 int free (int ) ;
 int sceKernelFreeMemBlock (int ) ;

void co_delete(cothread_t handle)
   {
      free(handle);
      sceKernelFreeMemBlock(block);
   }
