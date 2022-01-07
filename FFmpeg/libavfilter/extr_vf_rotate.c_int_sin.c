
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int FIXP2 ;
 int INT_PI ;

__attribute__((used)) static int64_t int_sin(int64_t a)
{
    int64_t a2, res = 0;
    int i;
    if (a < 0) a = INT_PI-a;
    a %= 2 * INT_PI;

    if (a >= INT_PI*3/2) a -= 2*INT_PI;
    if (a >= INT_PI/2 ) a = INT_PI - a;


    a2 = (a*a)/(FIXP2);
    for (i = 2; i < 11; i += 2) {
        res += a;
        a = -a*a2 / (FIXP2*i*(i+1));
    }
    return (res + 8)>>4;
}
