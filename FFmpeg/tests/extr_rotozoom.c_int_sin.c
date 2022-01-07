
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int MY_PI ;
 int int_pow (int,int) ;

__attribute__((used)) static int64_t int_sin(int64_t a)
{
    if (a < 0)
        a = MY_PI - a;
    a %= 2 * MY_PI;

    if (a >= MY_PI * 3 / 2)
        a -= 2 * MY_PI;
    if (a >= MY_PI / 2)
        a = MY_PI - a;

    return a - int_pow(a, 3) / 6 + int_pow(a, 5) / 120 - int_pow(a, 7) / 5040;
}
