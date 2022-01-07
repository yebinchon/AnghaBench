
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ range; } ;
typedef TYPE_1__ ProbRange ;
typedef int BigInt ;


 int ff_big_add (int *,scalar_t__) ;
 int ff_big_div (int *,int ,scalar_t__*) ;
 int ff_big_mul (int *,scalar_t__) ;

__attribute__((used)) static int pop_integer(BigInt *b, const ProbRange *pranges)
{
    uint8_t r;
    int i;


    ff_big_div(b, 0, &r);

    i = 0;
    while (r < pranges->offset || r >= pranges->range + pranges->offset) {
        pranges++;
        i++;
    }
    ff_big_mul(b, pranges->range);
    ff_big_add(b, r - pranges->offset);
    return i;
}
