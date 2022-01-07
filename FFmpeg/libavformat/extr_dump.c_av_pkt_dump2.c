
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_base; } ;
typedef int FILE ;
typedef TYPE_1__ AVStream ;
typedef int AVPacket ;


 int pkt_dump_internal (int *,int *,int ,int const*,int,int ) ;

void av_pkt_dump2(FILE *f, const AVPacket *pkt, int dump_payload, const AVStream *st)
{
    pkt_dump_internal(((void*)0), f, 0, pkt, dump_payload, st->time_base);
}
