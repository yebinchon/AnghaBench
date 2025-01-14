
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ vcd_padding_bitrate_num; scalar_t__ vcd_padding_bytes_written; } ;
typedef TYPE_1__ MpegMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 long long VCD_PADDING_BITRATE_DEN ;
 scalar_t__ av_rescale (scalar_t__,scalar_t__,long long) ;

__attribute__((used)) static int get_vcd_padding_size(AVFormatContext *ctx, int64_t pts)
{
    MpegMuxContext *s = ctx->priv_data;
    int pad_bytes = 0;

    if (s->vcd_padding_bitrate_num > 0 && pts != AV_NOPTS_VALUE) {
        int64_t full_pad_bytes;


        full_pad_bytes =
            av_rescale(s->vcd_padding_bitrate_num, pts, 90000LL * 8 * VCD_PADDING_BITRATE_DEN);
        pad_bytes = (int)(full_pad_bytes - s->vcd_padding_bytes_written);

        if (pad_bytes < 0)


            pad_bytes = 0;
    }

    return pad_bytes;
}
