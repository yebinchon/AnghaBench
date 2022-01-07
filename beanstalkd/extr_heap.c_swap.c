
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** data; } ;
typedef TYPE_1__ Heap ;


 int set (TYPE_1__*,size_t,void*) ;

__attribute__((used)) static void
swap(Heap *h, size_t a, size_t b)
{
    void *tmp;

    tmp = h->data[a];
    set(h, a, h->data[b]);
    set(h, b, tmp);
}
