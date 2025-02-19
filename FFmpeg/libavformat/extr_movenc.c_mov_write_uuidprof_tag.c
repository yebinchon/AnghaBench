
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double int64_t ;
struct TYPE_10__ {int sample_rate; int bit_rate; int channels; scalar_t__ codec_id; int width; int height; } ;
struct TYPE_9__ {TYPE_2__** streams; } ;
struct TYPE_7__ {int den; int num; } ;
struct TYPE_8__ {TYPE_1__ avg_frame_rate; TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_H264 ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int FFMIN (int,int) ;
 double INT32_MAX ;
 int av_log (TYPE_3__*,int ,char*,double) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_uuidprof_tag(AVIOContext *pb, AVFormatContext *s)
{
    AVStream *video_st = s->streams[0];
    AVCodecParameters *video_par = s->streams[0]->codecpar;
    AVCodecParameters *audio_par = s->streams[1]->codecpar;
    int audio_rate = audio_par->sample_rate;
    int64_t frame_rate = video_st->avg_frame_rate.den ?
                        (video_st->avg_frame_rate.num * 0x10000LL) / video_st->avg_frame_rate.den :
                        0;
    int audio_kbitrate = audio_par->bit_rate / 1000;
    int video_kbitrate = FFMIN(video_par->bit_rate / 1000, 800 - audio_kbitrate);

    if (frame_rate < 0 || frame_rate > INT32_MAX) {
        av_log(s, AV_LOG_ERROR, "Frame rate %f outside supported range\n", frame_rate / (double)0x10000);
        return AVERROR(EINVAL);
    }

    avio_wb32(pb, 0x94);
    ffio_wfourcc(pb, "uuid");
    ffio_wfourcc(pb, "PROF");

    avio_wb32(pb, 0x21d24fce);
    avio_wb32(pb, 0xbb88695c);
    avio_wb32(pb, 0xfac9c740);

    avio_wb32(pb, 0x0);
    avio_wb32(pb, 0x3);

    avio_wb32(pb, 0x14);
    ffio_wfourcc(pb, "FPRF");
    avio_wb32(pb, 0x0);
    avio_wb32(pb, 0x0);
    avio_wb32(pb, 0x0);

    avio_wb32(pb, 0x2c);
    ffio_wfourcc(pb, "APRF");
    avio_wb32(pb, 0x0);
    avio_wb32(pb, 0x2);
    ffio_wfourcc(pb, "mp4a");
    avio_wb32(pb, 0x20f);
    avio_wb32(pb, 0x0);
    avio_wb32(pb, audio_kbitrate);
    avio_wb32(pb, audio_kbitrate);
    avio_wb32(pb, audio_rate);
    avio_wb32(pb, audio_par->channels);

    avio_wb32(pb, 0x34);
    ffio_wfourcc(pb, "VPRF");
    avio_wb32(pb, 0x0);
    avio_wb32(pb, 0x1);
    if (video_par->codec_id == AV_CODEC_ID_H264) {
        ffio_wfourcc(pb, "avc1");
        avio_wb16(pb, 0x014D);
        avio_wb16(pb, 0x0015);
    } else {
        ffio_wfourcc(pb, "mp4v");
        avio_wb16(pb, 0x0000);
        avio_wb16(pb, 0x0103);
    }
    avio_wb32(pb, 0x0);
    avio_wb32(pb, video_kbitrate);
    avio_wb32(pb, video_kbitrate);
    avio_wb32(pb, frame_rate);
    avio_wb32(pb, frame_rate);
    avio_wb16(pb, video_par->width);
    avio_wb16(pb, video_par->height);
    avio_wb32(pb, 0x010001);

    return 0;
}
