
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int arith2_get_scaled_value(int value, int n, int range)
{
    int split = (n << 1) - range;

    if (value > split)
        return split + (value - split >> 1);
    else
        return value;
}
