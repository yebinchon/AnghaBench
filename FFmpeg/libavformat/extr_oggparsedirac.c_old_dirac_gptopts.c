
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

__attribute__((used)) static uint64_t old_dirac_gptopts(AVFormatContext *s, int idx, uint64_t gp,
                                  int64_t *dts)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    uint64_t iframe = gp >> 30;
    uint64_t pframe = gp & 0x3fffffff;

    if (!pframe)
        os->pflags |= AV_PKT_FLAG_KEY;

    return iframe + pframe;
}
