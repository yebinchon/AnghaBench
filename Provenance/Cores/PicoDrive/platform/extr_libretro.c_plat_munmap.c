
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int munmap (void*,size_t) ;

void plat_munmap(void *ptr, size_t size)
{
 if (ptr != ((void*)0))
  munmap(ptr, size);
}
