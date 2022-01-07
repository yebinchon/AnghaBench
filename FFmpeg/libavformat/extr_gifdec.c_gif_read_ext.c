
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ delay; scalar_t__ min_delay; scalar_t__ default_delay; int total_iter; int max_delay; } ;
typedef TYPE_1__ GIFDemuxContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_FATAL ;
 int AV_RL16 (int*) ;
 scalar_t__ FFMIN (scalar_t__,int ) ;
 int GIF_APP_EXT_LABEL ;
 int GIF_GCE_EXT_LABEL ;
 int NETSCAPE_EXT_STR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avio_r8 (int *) ;
 int avio_read (int *,int*,int) ;
 scalar_t__ avio_rl16 (int *) ;
 int avio_skip (int *,int) ;
 int gif_skip_subblocks (int *) ;
 int strlen (int ) ;

__attribute__((used)) static int gif_read_ext(AVFormatContext *s)
{
    GIFDemuxContext *gdc = s->priv_data;
    AVIOContext *pb = s->pb;
    int sb_size, ext_label = avio_r8(pb);
    int ret;

    if (ext_label == GIF_GCE_EXT_LABEL) {
        if ((sb_size = avio_r8(pb)) < 4) {
            av_log(s, AV_LOG_FATAL, "Graphic Control Extension block's size less than 4.\n");
            return AVERROR_INVALIDDATA;
        }


        if ((ret = avio_skip(pb, 1)) < 0)
            return ret;

        gdc->delay = avio_rl16(pb);

        if (gdc->delay < gdc->min_delay)
            gdc->delay = gdc->default_delay;
        gdc->delay = FFMIN(gdc->delay, gdc->max_delay);


        if ((ret = avio_skip(pb, sb_size - 3)) < 0 )
            return ret;
    } else if (ext_label == GIF_APP_EXT_LABEL) {
        uint8_t data[256];

        sb_size = avio_r8(pb);
        ret = avio_read(pb, data, sb_size);
        if (ret < 0 || !sb_size)
            return ret;

        if (sb_size == strlen(NETSCAPE_EXT_STR)) {
            sb_size = avio_r8(pb);
            ret = avio_read(pb, data, sb_size);
            if (ret < 0 || !sb_size)
                return ret;

            if (sb_size == 3 && data[0] == 1) {
                gdc->total_iter = AV_RL16(data+1);

                if (gdc->total_iter == 0)
                    gdc->total_iter = -1;
            }
        }
    }

    if ((ret = gif_skip_subblocks(pb)) < 0)
        return ret;

    return 0;
}
