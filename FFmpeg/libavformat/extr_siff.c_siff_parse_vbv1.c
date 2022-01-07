
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nb_frames; int duration; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int frames; int bits; int rate; int block_align; int has_video; int has_audio; int curstrm; scalar_t__ cur_frame; } ;
struct TYPE_8__ {int width; int height; int format; int codec_tag; int codec_id; int codec_type; } ;
typedef TYPE_2__ SIFFContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_VB ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_PAL8 ;
 int ENOMEM ;
 int MKTAG (char,char,char,char) ;
 scalar_t__ TAG_VBHD ;
 int av_log (int *,int ,char*) ;
 TYPE_3__* avformat_new_stream (int *,int *) ;
 int avio_rb32 (int *) ;
 int avio_rl16 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int create_audio_stream (int *,TYPE_2__*) ;

__attribute__((used)) static int siff_parse_vbv1(AVFormatContext *s, SIFFContext *c, AVIOContext *pb)
{
    AVStream *st;
    int width, height;

    if (avio_rl32(pb) != TAG_VBHD) {
        av_log(s, AV_LOG_ERROR, "Header chunk is missing\n");
        return AVERROR_INVALIDDATA;
    }
    if (avio_rb32(pb) != 32) {
        av_log(s, AV_LOG_ERROR, "Header chunk size is incorrect\n");
        return AVERROR_INVALIDDATA;
    }
    if (avio_rl16(pb) != 1) {
        av_log(s, AV_LOG_ERROR, "Incorrect header version\n");
        return AVERROR_INVALIDDATA;
    }
    width = avio_rl16(pb);
    height = avio_rl16(pb);
    avio_skip(pb, 4);
    c->frames = avio_rl16(pb);
    if (!c->frames) {
        av_log(s, AV_LOG_ERROR, "File contains no frames ???\n");
        return AVERROR_INVALIDDATA;
    }
    c->bits = avio_rl16(pb);
    c->rate = avio_rl16(pb);
    c->block_align = c->rate * (c->bits >> 3);

    avio_skip(pb, 16);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_VB;
    st->codecpar->codec_tag = MKTAG('V', 'B', 'V', '1');
    st->codecpar->width = width;
    st->codecpar->height = height;
    st->codecpar->format = AV_PIX_FMT_PAL8;
    st->nb_frames =
    st->duration = c->frames;
    avpriv_set_pts_info(st, 16, 1, 12);

    c->cur_frame = 0;
    c->has_video = 1;
    c->has_audio = !!c->rate;
    c->curstrm = -1;
    if (c->has_audio)
        return create_audio_stream(s, c);
    return 0;
}
