
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 void* _mem2_memalign (int,int ) ;

void *_mem2_malloc(uint32_t size)
{
   return _mem2_memalign(32, size);
}
