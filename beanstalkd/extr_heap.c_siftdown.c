
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Heap ;


 scalar_t__ less (int *,size_t,size_t) ;
 int swap (int *,size_t,size_t) ;

__attribute__((used)) static void
siftdown(Heap *h, size_t k)
{
    for (;;) {
        size_t p = (k-1) / 2;

        if (k == 0 || less(h, p, k)) {
            return;
        }

        swap(h, k, p);
        k = p;
    }
}
