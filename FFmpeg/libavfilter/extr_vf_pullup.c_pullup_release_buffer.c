
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lock; } ;
typedef TYPE_1__ PullupBuffer ;



__attribute__((used)) static void pullup_release_buffer(PullupBuffer *b, int parity)
{
    if (!b)
        return;

    if ((parity + 1) & 1)
        b->lock[0]--;
    if ((parity + 1) & 2)
        b->lock[1]--;
}
