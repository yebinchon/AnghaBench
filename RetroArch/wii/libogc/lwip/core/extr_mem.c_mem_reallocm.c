
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mem_size_t ;


 int mem_free (void*) ;
 void* mem_malloc (int ) ;
 void* mem_realloc (void*,int ) ;
 int memcpy (void*,void*,int ) ;

void *
mem_reallocm(void *rmem, mem_size_t newsize)
{
  void *nmem;
  nmem = mem_malloc(newsize);
  if (nmem == ((void*)0)) {
    return mem_realloc(rmem, newsize);
  }
  memcpy(nmem, rmem, newsize);
  mem_free(rmem);
  return nmem;
}
