#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ogg_stream {int* buf; int pstart; int psize; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_15__ {TYPE_3__** streams; struct ogg* priv_data; } ;
struct TYPE_14__ {void* num; void* den; } ;
struct TYPE_11__ {void* den; void* num; } ;
struct TYPE_13__ {int /*<<< orphan*/  need_parsing; TYPE_2__* codecpar; TYPE_1__ sample_aspect_ratio; } ;
struct TYPE_12__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; void* height; void* width; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  AV_CODEC_ID_VP8 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 void* FUNC0 (int*) ; 
 void* FUNC1 (int*) ; 
 void* FUNC2 (int*) ; 
 int VP8_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_3__*,int*,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    uint8_t *p = os->buf + os->pstart;
    AVStream *st = s->streams[idx];
    AVRational framerate;

    if (os->psize < 7 || p[0] != 0x4f)
        return 0;

    switch (p[5]){
    case 0x01:
        if (os->psize < VP8_HEADER_SIZE) {
            FUNC3(s, AV_LOG_ERROR, "Invalid OggVP8 header packet");
            return AVERROR_INVALIDDATA;
        }

        if (p[6] != 1) {
            FUNC3(s, AV_LOG_WARNING,
                   "Unknown OggVP8 version %d.%d\n", p[6], p[7]);
            return AVERROR_INVALIDDATA;
        }

        st->codecpar->width         = FUNC0(p +  8);
        st->codecpar->height        = FUNC0(p + 10);
        st->sample_aspect_ratio.num = FUNC1(p + 12);
        st->sample_aspect_ratio.den = FUNC1(p + 15);
        framerate.num               = FUNC2(p + 18);
        framerate.den               = FUNC2(p + 22);

        FUNC4(st, 64, framerate.den, framerate.num);
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id   = AV_CODEC_ID_VP8;
        st->need_parsing      = AVSTREAM_PARSE_HEADERS;
        break;
    case 0x02:
        if (p[6] != 0x20)
            return AVERROR_INVALIDDATA;
        FUNC5(s, st, p + 7, os->psize - 7);
        break;
    default:
        FUNC3(s, AV_LOG_ERROR, "Unknown VP8 header type 0x%02X\n", p[5]);
        return AVERROR_INVALIDDATA;
    }

    return 1;
}