
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_13__ {int standard; int per_frame; int tuner_fd; int video_fd; int height; int width; void* framerate; } ;
typedef TYPE_2__ VideoData ;
struct TYPE_16__ {int url; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int den; int num; } ;
struct TYPE_14__ {TYPE_4__ avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int height; int width; int codec_id; int format; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_RAWVIDEO ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_YUV420P ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;



 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_parse_video_rate (TYPE_4__*,void*) ;
 void* av_strdup (char*) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 scalar_t__ bktr_init (int ,int ,int ,int,int *,int *,int,double) ;
 scalar_t__ last_frame_time ;
 scalar_t__ nsignals ;

__attribute__((used)) static int grab_read_header(AVFormatContext *s1)
{
    VideoData *s = s1->priv_data;
    AVStream *st;
    AVRational framerate;
    int ret = 0;

    if (!s->framerate)
        switch (s->standard) {
        case 129: s->framerate = av_strdup("pal"); break;
        case 130: s->framerate = av_strdup("ntsc"); break;
        case 128: s->framerate = av_strdup("25"); break;
        default:
            av_log(s1, AV_LOG_ERROR, "Unknown standard.\n");
            ret = AVERROR(EINVAL);
            goto out;
        }
    if ((ret = av_parse_video_rate(&framerate, s->framerate)) < 0) {
        av_log(s1, AV_LOG_ERROR, "Could not parse framerate '%s'.\n", s->framerate);
        goto out;
    }

    st = avformat_new_stream(s1, ((void*)0));
    if (!st) {
        ret = AVERROR(ENOMEM);
        goto out;
    }
    avpriv_set_pts_info(st, 64, 1, 1000000);

    s->per_frame = ((uint64_t)1000000 * framerate.den) / framerate.num;

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->format = AV_PIX_FMT_YUV420P;
    st->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    st->codecpar->width = s->width;
    st->codecpar->height = s->height;
    st->avg_frame_rate = framerate;

    if (bktr_init(s1->url, s->width, s->height, s->standard,
                  &s->video_fd, &s->tuner_fd, -1, 0.0) < 0) {
        ret = AVERROR(EIO);
        goto out;
    }

    nsignals = 0;
    last_frame_time = 0;

out:
    return ret;
}
