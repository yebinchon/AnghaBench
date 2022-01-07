
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
struct TYPE_5__ {struct ogg* priv_data; } ;
struct TYPE_4__ {int gpshift; int gpmask; } ;
typedef TYPE_1__ DaalaInfoHeader ;
typedef TYPE_2__ AVFormatContext ;


 int AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;

__attribute__((used)) static uint64_t daala_gptopts(AVFormatContext *ctx, int idx, uint64_t gp,
                              int64_t *dts)
{
    uint64_t iframe, pframe;
    struct ogg *ogg = ctx->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    DaalaInfoHeader *hdr = os->private;

    if (!hdr)
        return AV_NOPTS_VALUE;

    iframe = gp >> hdr->gpshift;
    pframe = gp & hdr->gpmask;

    if (!pframe)
        os->pflags |= AV_PKT_FLAG_KEY;

    if (dts)
        *dts = iframe + pframe;

    return iframe + pframe;
}
