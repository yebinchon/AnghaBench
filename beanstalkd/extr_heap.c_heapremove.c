
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t len; void** data; } ;
typedef TYPE_1__ Heap ;


 int set (TYPE_1__*,size_t,void*) ;
 int siftdown (TYPE_1__*,size_t) ;
 int siftup (TYPE_1__*,size_t) ;

void *
heapremove(Heap *h, size_t k)
{
    if (k >= h->len) {
        return 0;
    }

    void *x = h->data[k];
    h->len--;
    set(h, k, h->data[h->len]);
    siftdown(h, k);
    siftup(h, k);
    return x;
}
