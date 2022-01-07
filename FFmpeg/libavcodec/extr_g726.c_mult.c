
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int exp; int mant; int sign; } ;
typedef TYPE_1__ Float11 ;



__attribute__((used)) static inline int16_t mult(Float11* f1, Float11* f2)
{
        int res, exp;

        exp = f1->exp + f2->exp;
        res = (((f1->mant * f2->mant) + 0x30) >> 4);
        res = exp > 19 ? res << (exp - 19) : res >> (19 - exp);
        return (f1->sign ^ f2->sign) ? -res : res;
}
