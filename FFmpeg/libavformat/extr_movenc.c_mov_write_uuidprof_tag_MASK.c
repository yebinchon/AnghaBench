#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double int64_t ;
struct TYPE_10__ {int sample_rate; int bit_rate; int channels; scalar_t__ codec_id; int width; int height; } ;
struct TYPE_9__ {TYPE_2__** streams; } ;
struct TYPE_7__ {int den; int num; } ;
struct TYPE_8__ {TYPE_1__ avg_frame_rate; TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 double INT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, AVFormatContext *s)
{
    AVStream       *video_st    = s->streams[0];
    AVCodecParameters *video_par = s->streams[0]->codecpar;
    AVCodecParameters *audio_par = s->streams[1]->codecpar;
    int audio_rate = audio_par->sample_rate;
    int64_t frame_rate = video_st->avg_frame_rate.den ?
                        (video_st->avg_frame_rate.num * 0x10000LL) / video_st->avg_frame_rate.den :
                        0;
    int audio_kbitrate = audio_par->bit_rate / 1000;
    int video_kbitrate = FUNC1(video_par->bit_rate / 1000, 800 - audio_kbitrate);

    if (frame_rate < 0 || frame_rate > INT32_MAX) {
        FUNC2(s, AV_LOG_ERROR, "Frame rate %f outside supported range\n", frame_rate / (double)0x10000);
        return FUNC0(EINVAL);
    }

    FUNC4(pb, 0x94); /* size */
    FUNC5(pb, "uuid");
    FUNC5(pb, "PROF");

    FUNC4(pb, 0x21d24fce); /* 96 bit UUID */
    FUNC4(pb, 0xbb88695c);
    FUNC4(pb, 0xfac9c740);

    FUNC4(pb, 0x0);  /* ? */
    FUNC4(pb, 0x3);  /* 3 sections ? */

    FUNC4(pb, 0x14); /* size */
    FUNC5(pb, "FPRF");
    FUNC4(pb, 0x0);  /* ? */
    FUNC4(pb, 0x0);  /* ? */
    FUNC4(pb, 0x0);  /* ? */

    FUNC4(pb, 0x2c);  /* size */
    FUNC5(pb, "APRF"); /* audio */
    FUNC4(pb, 0x0);
    FUNC4(pb, 0x2);   /* TrackID */
    FUNC5(pb, "mp4a");
    FUNC4(pb, 0x20f);
    FUNC4(pb, 0x0);
    FUNC4(pb, audio_kbitrate);
    FUNC4(pb, audio_kbitrate);
    FUNC4(pb, audio_rate);
    FUNC4(pb, audio_par->channels);

    FUNC4(pb, 0x34);  /* size */
    FUNC5(pb, "VPRF");   /* video */
    FUNC4(pb, 0x0);
    FUNC4(pb, 0x1);    /* TrackID */
    if (video_par->codec_id == AV_CODEC_ID_H264) {
        FUNC5(pb, "avc1");
        FUNC3(pb, 0x014D);
        FUNC3(pb, 0x0015);
    } else {
        FUNC5(pb, "mp4v");
        FUNC3(pb, 0x0000);
        FUNC3(pb, 0x0103);
    }
    FUNC4(pb, 0x0);
    FUNC4(pb, video_kbitrate);
    FUNC4(pb, video_kbitrate);
    FUNC4(pb, frame_rate);
    FUNC4(pb, frame_rate);
    FUNC3(pb, video_par->width);
    FUNC3(pb, video_par->height);
    FUNC4(pb, 0x010001); /* ? */

    return 0;
}