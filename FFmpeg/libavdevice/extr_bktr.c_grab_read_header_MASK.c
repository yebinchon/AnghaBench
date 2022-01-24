#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_13__ {int standard; int per_frame; int /*<<< orphan*/  tuner_fd; int /*<<< orphan*/  video_fd; int /*<<< orphan*/  height; int /*<<< orphan*/  width; void* framerate; } ;
typedef  TYPE_2__ VideoData ;
struct TYPE_16__ {int /*<<< orphan*/  url; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int den; int num; } ;
struct TYPE_14__ {TYPE_4__ avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  format; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  NTSC 130 
#define  PAL 129 
#define  SECAM 128 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_4__*,void*) ; 
 void* FUNC3 (char*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,double) ; 
 scalar_t__ last_frame_time ; 
 scalar_t__ nsignals ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s1)
{
    VideoData *s = s1->priv_data;
    AVStream *st;
    AVRational framerate;
    int ret = 0;

    if (!s->framerate)
        switch (s->standard) {
        case PAL:   s->framerate = FUNC3("pal");  break;
        case NTSC:  s->framerate = FUNC3("ntsc"); break;
        case SECAM: s->framerate = FUNC3("25");   break;
        default:
            FUNC1(s1, AV_LOG_ERROR, "Unknown standard.\n");
            ret = FUNC0(EINVAL);
            goto out;
        }
    if ((ret = FUNC2(&framerate, s->framerate)) < 0) {
        FUNC1(s1, AV_LOG_ERROR, "Could not parse framerate '%s'.\n", s->framerate);
        goto out;
    }

    st = FUNC4(s1, NULL);
    if (!st) {
        ret = FUNC0(ENOMEM);
        goto out;
    }
    FUNC5(st, 64, 1, 1000000); /* 64 bits pts in use */

    s->per_frame = ((uint64_t)1000000 * framerate.den) / framerate.num;

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->format = AV_PIX_FMT_YUV420P;
    st->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    st->codecpar->width = s->width;
    st->codecpar->height = s->height;
    st->avg_frame_rate = framerate;

    if (FUNC6(s1->url, s->width, s->height, s->standard,
                  &s->video_fd, &s->tuner_fd, -1, 0.0) < 0) {
        ret = FUNC0(EIO);
        goto out;
    }

    nsignals = 0;
    last_frame_time = 0;

out:
    return ret;
}