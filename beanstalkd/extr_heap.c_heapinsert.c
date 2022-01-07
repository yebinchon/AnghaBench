
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t len; size_t cap; void** data; } ;
typedef TYPE_1__ Heap ;


 int free (void**) ;
 void** malloc (int) ;
 int memcpy (void**,void**,int) ;
 int set (TYPE_1__*,size_t,void*) ;
 int siftdown (TYPE_1__*,size_t) ;

int
heapinsert(Heap *h, void *x)
{
    if (h->len == h->cap) {
        void **ndata;
        size_t ncap = (h->len+1) * 2;

        ndata = malloc(sizeof(void*) * ncap);
        if (!ndata) {
            return 0;
        }

        memcpy(ndata, h->data, sizeof(void*) * h->len);
        free(h->data);
        h->data = ndata;
        h->cap = ncap;
    }

    size_t k = h->len;
    h->len++;
    set(h, k, x);
    siftdown(h, k);
    return 1;
}
