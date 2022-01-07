
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int *** pblocks; } ;
typedef TYPE_1__ MpegEncContext ;



__attribute__((used)) static void exchange_uv(MpegEncContext *s)
{
    int16_t (*tmp)[64];

    tmp = s->pblocks[4];
    s->pblocks[4] = s->pblocks[5];
    s->pblocks[5] = tmp;
}
