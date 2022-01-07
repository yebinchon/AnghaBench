
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct ogg_stream {int* buf; int pstart; int psize; int pduration; int pflags; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_3__ {struct ogg* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_PKT_FLAG_KEY ;

__attribute__((used)) static int
ogm_packet(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    uint8_t *p = os->buf + os->pstart;
    int lb;

    if(*p & 8)
        os->pflags |= AV_PKT_FLAG_KEY;

    lb = ((*p & 2) << 1) | ((*p >> 6) & 3);
    if (os->psize < lb + 1)
        return AVERROR_INVALIDDATA;

    os->pstart += lb + 1;
    os->psize -= lb + 1;

    while (lb--)
        os->pduration += (uint64_t)p[lb+1] << (lb*8);

    return 0;
}
