
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_19__ {int total_samples; int blocksize; int samples; } ;
struct TYPE_20__ {int apetag_start; TYPE_2__ header; int rate; int bpp; int chmask; int chan; scalar_t__ block_parsed; } ;
typedef TYPE_3__ WVContext ;
struct TYPE_23__ {TYPE_5__* pb; int metadata; TYPE_3__* priv_data; } ;
struct TYPE_22__ {int seekable; } ;
struct TYPE_21__ {int duration; scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_18__ {int bits_per_coded_sample; int sample_rate; int channel_layout; int channels; int codec_id; int codec_type; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_WAVPACK ;
 int AV_DICT_IGNORE_SUFFIX ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_dict_get (int ,char*,int *,int ) ;
 TYPE_4__* avformat_new_stream (TYPE_6__*,int *) ;
 int avio_seek (TYPE_5__*,int ,int ) ;
 int avio_skip (TYPE_5__*,int ) ;
 int avio_tell (TYPE_5__*) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int ) ;
 int ff_ape_parse_tag (TYPE_6__*) ;
 int ff_id3v1_read (TYPE_6__*) ;
 int wv_read_block_header (TYPE_6__*,TYPE_5__*) ;

__attribute__((used)) static int wv_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WVContext *wc = s->priv_data;
    AVStream *st;
    int ret;

    wc->block_parsed = 0;
    for (;;) {
        if ((ret = wv_read_block_header(s, pb)) < 0)
            return ret;
        if (!wc->header.samples)
            avio_skip(pb, wc->header.blocksize);
        else
            break;
    }


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_WAVPACK;
    st->codecpar->channels = wc->chan;
    st->codecpar->channel_layout = wc->chmask;
    st->codecpar->sample_rate = wc->rate;
    st->codecpar->bits_per_coded_sample = wc->bpp;
    avpriv_set_pts_info(st, 64, 1, wc->rate);
    st->start_time = 0;
    if (wc->header.total_samples != 0xFFFFFFFFu)
        st->duration = wc->header.total_samples;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t cur = avio_tell(s->pb);
        wc->apetag_start = ff_ape_parse_tag(s);
        if (!av_dict_get(s->metadata, "", ((void*)0), AV_DICT_IGNORE_SUFFIX))
            ff_id3v1_read(s);
        avio_seek(s->pb, cur, SEEK_SET);
    }

    return 0;
}
