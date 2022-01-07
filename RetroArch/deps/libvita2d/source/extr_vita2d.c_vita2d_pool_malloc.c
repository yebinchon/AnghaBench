
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pool_addr ;
 scalar_t__ pool_index ;
 scalar_t__ pool_size ;

void *vita2d_pool_malloc(unsigned int size)
{
 if ((pool_index + size) < pool_size) {
  void *addr = (void *)((unsigned int)pool_addr + pool_index);
  pool_index += size;
  return addr;
 }
 return ((void*)0);
}
