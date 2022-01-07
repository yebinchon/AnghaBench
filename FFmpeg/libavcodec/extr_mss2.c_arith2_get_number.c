
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int high; int low; int value; } ;
typedef TYPE_1__ ArithCoder ;


 int arith2_get_scaled_value (int,int,int) ;
 int arith2_normalise (TYPE_1__*) ;
 int arith2_rescale_interval (TYPE_1__*,int,int,int,int) ;
 int av_log2 (int) ;

__attribute__((used)) static int arith2_get_number(ArithCoder *c, int n)
{
    int range = c->high - c->low + 1;
    int scale = av_log2(range) - av_log2(n);
    int val;

    if (n << scale > range)
        scale--;

    n <<= scale;

    val = arith2_get_scaled_value(c->value - c->low, n, range) >> scale;

    arith2_rescale_interval(c, range, val << scale, (val + 1) << scale, n);

    arith2_normalise(c);

    return val;
}
