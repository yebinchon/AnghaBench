
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ offset; int range; } ;
typedef TYPE_1__ ProbRange ;
typedef int BigInt ;


 int ff_big_add (int *,scalar_t__) ;
 int ff_big_div (int *,int ,scalar_t__*) ;
 int ff_big_mul (int *,int ) ;

__attribute__((used)) static void push_integer(BigInt *b, const ProbRange *prange)
{
    uint8_t r;

    ff_big_div(b, prange->range, &r);
    ff_big_mul(b, 0);
    ff_big_add(b, r + prange->offset);
}
