
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct ogg_stream {int pflags; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef int int64_t ;
struct TYPE_3__ {struct ogg* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_PKT_FLAG_KEY ;

__attribute__((used)) static uint64_t dirac_gptopts(AVFormatContext *s, int idx, uint64_t granule,
                              int64_t *dts_out)
{
    int64_t gp = granule;
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;

    unsigned dist = ((gp >> 14) & 0xff00) | (gp & 0xff);
    int64_t dts = (gp >> 31);
    int64_t pts = dts + ((gp >> 9) & 0x1fff);

    if (!dist)
        os->pflags |= AV_PKT_FLAG_KEY;

    if (dts_out)
        *dts_out = dts;

    return pts;
}
