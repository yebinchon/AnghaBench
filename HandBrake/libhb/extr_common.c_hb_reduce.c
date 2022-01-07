
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void hb_reduce( int *x, int *y, int num, int den )
{

    int n = num, d = den;
    while ( d )
    {
        int t = d;
        d = n % d;
        n = t;
    }



    if ( n )
    {
        *x = num / n;
        *y = den / n;
    }
    else
    {
        *x = num;
        *y = den;
    }
}
