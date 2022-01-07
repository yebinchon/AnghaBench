
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* setpos ) (void*,size_t) ;void** data; } ;
typedef TYPE_1__ Heap ;


 int stub1 (void*,size_t) ;

__attribute__((used)) static void
set(Heap *h, size_t k, void *x)
{
    h->data[k] = x;
    h->setpos(x, k);
}
