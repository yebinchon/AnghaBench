
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* dc; } ;
struct TYPE_5__ {int ref; TYPE_1__ u; } ;
typedef TYPE_2__ DiracBlock ;


 int divide3 (int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static inline void pred_block_dc(DiracBlock *block, int stride, int x, int y)
{
    int i, n = 0;

    memset(block->u.dc, 0, sizeof(block->u.dc));

    if (x && !(block[-1].ref & 3)) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] += block[-1].u.dc[i];
        n++;
    }

    if (y && !(block[-stride].ref & 3)) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] += block[-stride].u.dc[i];
        n++;
    }

    if (x && y && !(block[-1-stride].ref & 3)) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] += block[-1-stride].u.dc[i];
        n++;
    }

    if (n == 2) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] = (block->u.dc[i]+1)>>1;
    } else if (n == 3) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] = divide3(block->u.dc[i]);
    }
}
