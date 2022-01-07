
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {unsigned long long msb_pts_shift; int last_pts; } ;
typedef TYPE_1__ StreamContext ;



int64_t ff_lsb2full(StreamContext *stream, int64_t lsb)
{
    int64_t mask = (1ULL << stream->msb_pts_shift) - 1;
    int64_t delta = stream->last_pts - mask / 2;
    return ((lsb - delta) & mask) + delta;
}
