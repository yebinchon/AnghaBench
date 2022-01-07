
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFABS (int) ;
 int av_log2 (int ) ;

__attribute__((used)) static int inline number_sbits(int number)
{
    if (number < 0)
        number++;

    return av_log2(FFABS(number)) + 1 + !!number;
}
