
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ogg_stream {int pflags; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef int int64_t ;
struct TYPE_3__ {struct ogg* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_PKT_FLAG_KEY ;

__attribute__((used)) static uint64_t vp8_gptopts(AVFormatContext *s, int idx,
                            uint64_t granule, int64_t *dts)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;

    int invcnt = !((granule >> 30) & 3);



    uint64_t pts = (granule >> 32) - invcnt;
    uint32_t dist = (granule >> 3) & 0x07ffffff;

    if (!dist)
        os->pflags |= AV_PKT_FLAG_KEY;

    if (dts)
        *dts = pts;

    return pts;
}
