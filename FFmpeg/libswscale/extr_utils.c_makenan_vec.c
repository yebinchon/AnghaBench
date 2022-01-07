
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * coeff; } ;
typedef TYPE_1__ SwsVector ;


 int NAN ;

__attribute__((used)) static void makenan_vec(SwsVector *a)
{
    int i;
    for (i=0; i<a->length; i++)
        a->coeff[i] = NAN;
}
