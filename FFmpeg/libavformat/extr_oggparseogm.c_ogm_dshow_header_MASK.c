#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ogg_stream {int* buf; int pstart; int psize; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_8__ {TYPE_2__** streams; struct ogg* priv_data; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {int width; int height; int channels; int sample_rate; int bit_rate; void* codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_codec_wav_tags ; 

__attribute__((used)) static int
FUNC5(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    uint8_t *p = os->buf + os->pstart;
    uint32_t t;

    if(!(*p & 1))
        return 0;
    if(*p != 1)
        return 1;

    if (os->psize < 100)
        return AVERROR_INVALIDDATA;
    t = FUNC1(p + 96);

    if(t == 0x05589f80){
        if (os->psize < 184)
            return AVERROR_INVALIDDATA;

        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id = FUNC4(ff_codec_bmp_tags, FUNC1(p + 68));
        FUNC3(st, 64, FUNC2(p + 164), 10000000);
        st->codecpar->width = FUNC1(p + 176);
        st->codecpar->height = FUNC1(p + 180);
    } else if(t == 0x05589f81){
        if (os->psize < 136)
            return AVERROR_INVALIDDATA;

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = FUNC4(ff_codec_wav_tags, FUNC0(p + 124));
        st->codecpar->channels = FUNC0(p + 126);
        st->codecpar->sample_rate = FUNC1(p + 128);
        st->codecpar->bit_rate = FUNC1(p + 132) * 8;
    }

    return 1;
}