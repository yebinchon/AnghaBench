
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pts; scalar_t__ pos; } ;
typedef TYPE_1__ AVPacket ;


 int FFDIFFSIGN (scalar_t__,scalar_t__) ;

__attribute__((used)) static int cmp_pkt_sub_ts_pos(const void *a, const void *b)
{
    const AVPacket *s1 = a;
    const AVPacket *s2 = b;
    if (s1->pts == s2->pts)
        return FFDIFFSIGN(s1->pos, s2->pos);
    return FFDIFFSIGN(s1->pts , s2->pts);
}
