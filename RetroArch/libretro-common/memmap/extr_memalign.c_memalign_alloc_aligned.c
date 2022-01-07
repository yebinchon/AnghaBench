
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memalign_alloc (int,size_t) ;

void *memalign_alloc_aligned(size_t size)
{

   return memalign_alloc(64, size);





}
