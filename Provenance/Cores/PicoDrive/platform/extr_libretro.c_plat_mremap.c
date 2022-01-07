
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int free (void*) ;
 void* malloc (size_t) ;
 int memcpy (void*,void*,size_t) ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 void* mremap (void*,size_t,size_t,int ) ;
 int munmap (void*,size_t) ;

void *plat_mremap(void *ptr, size_t oldsize, size_t newsize)
{

 void *ret = mremap(ptr, oldsize, newsize, 0);
 if (ret == MAP_FAILED)
  return ((void*)0);

 return ret;
}
