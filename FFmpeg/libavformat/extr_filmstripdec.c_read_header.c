
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {TYPE_4__* pb; TYPE_2__* priv_data; } ;
struct TYPE_21__ {int seekable; } ;
struct TYPE_20__ {TYPE_1__* codecpar; scalar_t__ nb_frames; } ;
struct TYPE_19__ {scalar_t__ leading; } ;
struct TYPE_18__ {scalar_t__ height; scalar_t__ width; scalar_t__ codec_tag; int format; int codec_id; int codec_type; } ;
typedef TYPE_2__ FilmstripDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_RAWVIDEO ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_RGBA ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ RAND_TAG ;
 int SEEK_SET ;
 scalar_t__ av_image_check_size (scalar_t__,scalar_t__,int ,TYPE_5__*) ;
 int av_log (TYPE_5__*,int ,char*) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 scalar_t__ avio_rb16 (TYPE_4__*) ;
 scalar_t__ avio_rb32 (TYPE_4__*) ;
 int avio_seek (TYPE_4__*,scalar_t__,int ) ;
 scalar_t__ avio_size (TYPE_4__*) ;
 int avio_skip (TYPE_4__*,int) ;
 int avpriv_request_sample (TYPE_5__*,char*) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,scalar_t__) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    FilmstripDemuxContext *film = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL))
        return AVERROR(EIO);

    avio_seek(pb, avio_size(pb) - 36, SEEK_SET);
    if (avio_rb32(pb) != RAND_TAG) {
        av_log(s, AV_LOG_ERROR, "magic number not found\n");
        return AVERROR_INVALIDDATA;
    }

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->nb_frames = avio_rb32(pb);
    if (avio_rb16(pb) != 0) {
        avpriv_request_sample(s, "Unsupported packing method");
        return AVERROR_PATCHWELCOME;
    }

    avio_skip(pb, 2);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    st->codecpar->format = AV_PIX_FMT_RGBA;
    st->codecpar->codec_tag = 0;
    st->codecpar->width = avio_rb16(pb);
    st->codecpar->height = avio_rb16(pb);
    film->leading = avio_rb16(pb);

    if (av_image_check_size(st->codecpar->width, st->codecpar->height, 0, s) < 0)
        return AVERROR_INVALIDDATA;

    avpriv_set_pts_info(st, 64, 1, avio_rb16(pb));

    avio_seek(pb, 0, SEEK_SET);

    return 0;
}
