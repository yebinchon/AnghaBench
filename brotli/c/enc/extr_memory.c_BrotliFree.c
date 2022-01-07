
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opaque; int (* free_func ) (int ,void*) ;} ;
typedef TYPE_1__ MemoryManager ;


 int stub1 (int ,void*) ;

void BrotliFree(MemoryManager* m, void* p) {
  m->free_func(m->opaque, p);
}
