
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; scalar_t__ pts; } ;
typedef TYPE_1__ AVPacket ;



__attribute__((used)) static int cmp_pkt_sub_pos_ts(const void *a, const void *b)
{
    const AVPacket *s1 = a;
    const AVPacket *s2 = b;
    if (s1->pos == s2->pos) {
        if (s1->pts == s2->pts)
            return 0;
        return s1->pts > s2->pts ? 1 : -1;
    }
    return s1->pos > s2->pos ? 1 : -1;
}
