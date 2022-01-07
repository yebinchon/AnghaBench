
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t len; } ;
typedef TYPE_1__ Heap ;


 scalar_t__ less (TYPE_1__*,size_t,size_t) ;
 int swap (TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static void
siftup(Heap *h, size_t k)
{
    for (;;) {
        size_t l = k*2 + 1;
        size_t r = k*2 + 2;


        size_t s = k;
        if (l < h->len && less(h, l, s)) s = l;
        if (r < h->len && less(h, r, s)) s = r;

        if (s == k) {
            return;
        }

        swap(h, k, s);
        k = s;
    }
}
