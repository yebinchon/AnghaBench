
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isMallocMem (unsigned int,char*) ;
 void* realloc (void*,unsigned int) ;

void* taos_realloc(void* ptr, unsigned int size, char* _func) {

  if (0 == isMallocMem(size, _func)) {
    return ((void*)0);
  }

  void *p = ((void*)0);
  p = realloc(ptr, size);
  return p;
}
