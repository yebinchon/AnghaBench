
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opaque; void* (* alloc_func ) (int ,size_t) ;} ;
typedef TYPE_1__ MemoryManager ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 void* stub1 (int ,size_t) ;

void* BrotliAllocate(MemoryManager* m, size_t n) {
  void* result = m->alloc_func(m->opaque, n);
  if (!result) exit(EXIT_FAILURE);
  return result;
}
