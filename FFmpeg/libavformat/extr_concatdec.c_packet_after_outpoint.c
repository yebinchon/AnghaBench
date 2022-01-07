
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dts; size_t stream_index; } ;
struct TYPE_11__ {TYPE_3__* cur_file; TYPE_2__* avf; } ;
struct TYPE_10__ {scalar_t__ outpoint; } ;
struct TYPE_9__ {TYPE_1__** streams; } ;
struct TYPE_8__ {int time_base; } ;
typedef TYPE_4__ ConcatContext ;
typedef TYPE_5__ AVPacket ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 scalar_t__ av_compare_ts (scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static int packet_after_outpoint(ConcatContext *cat, AVPacket *pkt)
{
    if (cat->cur_file->outpoint != AV_NOPTS_VALUE && pkt->dts != AV_NOPTS_VALUE) {
        return av_compare_ts(pkt->dts, cat->avf->streams[pkt->stream_index]->time_base,
                             cat->cur_file->outpoint, AV_TIME_BASE_Q) >= 0;
    }
    return 0;
}
