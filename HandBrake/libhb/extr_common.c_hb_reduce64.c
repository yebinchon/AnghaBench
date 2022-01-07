
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



void hb_reduce64( int64_t *x, int64_t *y, int64_t num, int64_t den )
{

    int64_t n = num, d = den;
    while ( d )
    {
        int64_t t = d;
        d = n % d;
        n = t;
    }



    if ( n )
    {
        num /= n;
        den /= n;
    }

    *x = num;
    *y = den;

}
