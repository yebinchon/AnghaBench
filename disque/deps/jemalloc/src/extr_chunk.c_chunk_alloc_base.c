
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED (void*,size_t) ;
 void* chunk_alloc_mmap (size_t,int ,int*,int*) ;
 int chunksize ;
 scalar_t__ config_valgrind ;

void *
chunk_alloc_base(size_t size)
{
 void *ret;
 bool zero, commit;






 zero = 1;
 commit = 1;
 ret = chunk_alloc_mmap(size, chunksize, &zero, &commit);
 if (ret == ((void*)0))
  return (((void*)0));
 if (config_valgrind)
  JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(ret, size);

 return (ret);
}
