
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_19__ {int str; } ;
struct TYPE_18__ {int metadata; int * pb; TYPE_3__* priv_data; } ;
struct TYPE_17__ {int duration; int nb_frames; TYPE_2__* codecpar; scalar_t__ start_time; } ;
struct TYPE_16__ {int delay; int default_delay; int min_delay; int max_delay; } ;
struct TYPE_14__ {int num; int den; } ;
struct TYPE_15__ {int width; int height; TYPE_1__ sample_aspect_ratio; int codec_id; int codec_type; } ;
typedef TYPE_3__ GIFDemuxContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_GIF ;
 int EIO ;
 int ENOMEM ;
 int FFMIN (int,int ) ;
 int GIF_COM_EXT_LABEL ;
 int GIF_EXTENSION_INTRODUCER ;
 int GIF_GCE_EXT_LABEL ;
 int GIF_IMAGE_SEPARATOR ;
 int GIF_TRAILER ;
 int SEEK_SET ;
 int av_bprint_finalize (TYPE_6__*,int *) ;
 int av_bprint_init (TYPE_6__*,int ,int) ;
 int av_dict_set (int *,char*,int ,int ) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_read_to_bprint (int *,TYPE_6__*,int) ;
 int avio_rl16 (int *) ;
 scalar_t__ avio_seek (int *,int ,int ) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;
 int gif_skip_subblocks (int *) ;
 int resync (int *) ;

__attribute__((used)) static int gif_read_header(AVFormatContext *s)
{
    GIFDemuxContext *gdc = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    int type, width, height, ret, n, flags;
    int64_t nb_frames = 0, duration = 0;

    if ((ret = resync(pb)) < 0)
        return ret;

    gdc->delay = gdc->default_delay;
    width = avio_rl16(pb);
    height = avio_rl16(pb);
    flags = avio_r8(pb);
    avio_skip(pb, 1);
    n = avio_r8(pb);

    if (width == 0 || height == 0)
        return AVERROR_INVALIDDATA;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    if (flags & 0x80)
        avio_skip(pb, 3 * (1 << ((flags & 0x07) + 1)));

    while ((type = avio_r8(pb)) != GIF_TRAILER) {
        if (avio_feof(pb))
            break;
        if (type == GIF_EXTENSION_INTRODUCER) {
            int subtype = avio_r8(pb);
            if (subtype == GIF_COM_EXT_LABEL) {
                AVBPrint bp;
                int block_size;

                av_bprint_init(&bp, 0, -1);
                while ((block_size = avio_r8(pb)) != 0) {
                    avio_read_to_bprint(pb, &bp, block_size);
                }
                av_dict_set(&s->metadata, "comment", bp.str, 0);
                av_bprint_finalize(&bp, ((void*)0));
            } else if (subtype == GIF_GCE_EXT_LABEL) {
                int block_size = avio_r8(pb);

                if (block_size == 4) {
                    int delay;

                    avio_skip(pb, 1);
                    delay = avio_rl16(pb);
                    if (delay < gdc->min_delay)
                        delay = gdc->default_delay;
                    delay = FFMIN(delay, gdc->max_delay);
                    duration += delay;
                    avio_skip(pb, 1);
                } else {
                    avio_skip(pb, block_size);
                }
                gif_skip_subblocks(pb);
            } else {
                gif_skip_subblocks(pb);
            }
        } else if (type == GIF_IMAGE_SEPARATOR) {
            avio_skip(pb, 8);
            flags = avio_r8(pb);
            if (flags & 0x80)
                avio_skip(pb, 3 * (1 << ((flags & 0x07) + 1)));
            avio_skip(pb, 1);
            gif_skip_subblocks(pb);
            nb_frames++;
        } else {
            break;
        }
    }



    avpriv_set_pts_info(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_GIF;
    st->codecpar->width = width;
    st->codecpar->height = height;
    st->start_time = 0;
    st->duration = duration;
    st->nb_frames = nb_frames;
    if (n) {
        st->codecpar->sample_aspect_ratio.num = n + 15;
        st->codecpar->sample_aspect_ratio.den = 64;
    }


    if (avio_seek(pb, 0, SEEK_SET) != 0)
        return AVERROR(EIO);

    return 0;
}
