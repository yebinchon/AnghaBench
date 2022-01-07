
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ DiracBlock ;



__attribute__((used)) static inline int pred_block_mode(DiracBlock *block, int stride, int x, int y, int refmask)
{
    int pred;

    if (!(x|y))
        return 0;
    else if (!y)
        return block[-1].ref & refmask;
    else if (!x)
        return block[-stride].ref & refmask;


    pred = (block[-1].ref & refmask) + (block[-stride].ref & refmask) + (block[-stride-1].ref & refmask);
    return (pred >> 1) & refmask;
}
