
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; int low; } ;
typedef TYPE_1__ ArithCoder ;



__attribute__((used)) static void arith2_rescale_interval(ArithCoder *c, int range,
                                    int low, int high, int n)
{
    int split = (n << 1) - range;

    if (high > split)
        c->high = split + (high - split << 1);
    else
        c->high = high;

    c->high += c->low - 1;

    if (low > split)
        c->low += split + (low - split << 1);
    else
        c->low += low;
}
