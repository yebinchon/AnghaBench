
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 intptr_t PAGE_SIZE ;
 int exit (int) ;
 int munmap (void*,unsigned int) ;
 int printf (char*,int) ;

void unmapmem(void *addr, unsigned size)
{
   const intptr_t offset = (intptr_t)addr % PAGE_SIZE;
   addr = (char *)addr - offset;
   size = size + offset;
   int s = munmap(addr, size);
   if (s != 0) {
      printf("munmap error %d\n", s);
      exit (-1);
   }
}
