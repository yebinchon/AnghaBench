
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (unsigned int,unsigned int) ;
 int isMallocMem (unsigned int,char*) ;

void* taos_calloc(unsigned int num, unsigned int size, char* _func) {

  if (0 == isMallocMem(size, _func)) {
    return ((void*)0);
  }

  void *p = ((void*)0);
  p = calloc(num, size);
  return p;
}
