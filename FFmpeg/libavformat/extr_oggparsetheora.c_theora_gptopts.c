
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct ogg_stream {int pflags; TYPE_1__* private; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef int int64_t ;
struct TYPE_4__ {int gpshift; int gpmask; int version; } ;
typedef TYPE_1__ TheoraParams ;
struct TYPE_5__ {struct ogg* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;

__attribute__((used)) static uint64_t theora_gptopts(AVFormatContext *ctx, int idx, uint64_t gp,
                               int64_t *dts)
{
    struct ogg *ogg = ctx->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    TheoraParams *thp = os->private;
    uint64_t iframe, pframe;

    if (!thp)
        return AV_NOPTS_VALUE;

    iframe = gp >> thp->gpshift;
    pframe = gp & thp->gpmask;

    if (thp->version < 0x030201)
        iframe++;

    if (!pframe)
        os->pflags |= AV_PKT_FLAG_KEY;

    if (dts)
        *dts = iframe + pframe;

    return iframe + pframe;
}
