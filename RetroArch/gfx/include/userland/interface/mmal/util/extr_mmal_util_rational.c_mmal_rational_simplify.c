
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int den; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;


 int gcd (int,int) ;

void mmal_rational_simplify(MMAL_RATIONAL_T *rational)
{
   int g = gcd(rational->num, rational->den);
   rational->num /= g;
   rational->den /= g;
}
