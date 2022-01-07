
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_log2 (int) ;

int ff_g723_1_normalize_bits(int num, int width)
{
    return width - av_log2(num) - 1;
}
