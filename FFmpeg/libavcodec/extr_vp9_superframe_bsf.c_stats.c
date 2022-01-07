
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; } ;
typedef TYPE_1__ AVPacket ;



__attribute__((used)) static void stats(AVPacket * const *in, int n_in,
                  unsigned *_max, unsigned *_sum)
{
    int n;
    unsigned max = 0, sum = 0;

    for (n = 0; n < n_in; n++) {
        unsigned sz = in[n]->size;

        if (sz > max)
            max = sz;
        sum += sz;
    }

    *_max = max;
    *_sum = sum;
}
