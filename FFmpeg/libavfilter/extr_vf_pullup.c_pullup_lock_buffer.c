
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lock; } ;
typedef TYPE_1__ PullupBuffer ;



__attribute__((used)) static PullupBuffer *pullup_lock_buffer(PullupBuffer *b, int parity)
{
    if (!b)
        return ((void*)0);

    if ((parity + 1) & 1)
        b->lock[0]++;
    if ((parity + 1) & 2)
        b->lock[1]++;

    return b;
}
