
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int bits_per_coded_sample; int frame_size; int block_align; int codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int APTX_HD_BLOCK_SIZE ;
 int APTX_HD_PACKET_SIZE ;
 int AVERROR (int ) ;
 int AV_CODEC_ID_APTX_HD ;
 int ENOMEM ;
 TYPE_2__* aptx_read_header_common (int *) ;

__attribute__((used)) static int aptx_hd_read_header(AVFormatContext *s)
{
    AVStream *st = aptx_read_header_common(s);
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_id = AV_CODEC_ID_APTX_HD;
    st->codecpar->bits_per_coded_sample = 6;
    st->codecpar->block_align = APTX_HD_BLOCK_SIZE;
    st->codecpar->frame_size = APTX_HD_PACKET_SIZE;
    return 0;
}
