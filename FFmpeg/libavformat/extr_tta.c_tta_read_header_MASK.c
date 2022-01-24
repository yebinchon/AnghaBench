#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_25__ {int channels; int sample_rate; int bits_per_coded_sample; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_24__ {int seekable; } ;
struct TYPE_23__ {int error_recognition; TYPE_5__* pb; TYPE_1__* priv_data; } ;
struct TYPE_22__ {int duration; TYPE_9__* codecpar; scalar_t__ start_time; } ;
struct TYPE_21__ {int frame_size; int last_frame_size; int totalframes; scalar_t__ currentframe; } ;
typedef  TYPE_1__ TTAContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_TTA ; 
 int AV_EF_CRCCHECK ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int UINT32_MAX ; 
 int UINT_MAX ; 
 int FUNC2 (TYPE_2__*,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int,int) ; 
 scalar_t__ FUNC12 (TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  ff_crcEDB88320_update ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s)
{
    TTAContext *c = s->priv_data;
    AVStream *st;
    int i, channels, bps, samplerate;
    int64_t framepos, start_offset;
    uint32_t nb_samples, crc;

    FUNC14(s);

    start_offset = FUNC10(s->pb);
    if (start_offset < 0)
        return start_offset;
    FUNC16(s->pb, ff_crcEDB88320_update, UINT32_MAX);
    if (FUNC7(s->pb) != FUNC1("TTA1"))
        return AVERROR_INVALIDDATA;

    FUNC9(s->pb, 2); // FIXME: flags
    channels = FUNC6(s->pb);
    bps = FUNC6(s->pb);
    samplerate = FUNC7(s->pb);
    if(samplerate <= 0 || samplerate > 1000000){
        FUNC3(s, AV_LOG_ERROR, "nonsense samplerate\n");
        return AVERROR_INVALIDDATA;
    }

    nb_samples = FUNC7(s->pb);
    if (!nb_samples) {
        FUNC3(s, AV_LOG_ERROR, "invalid number of samples\n");
        return AVERROR_INVALIDDATA;
    }

    crc = FUNC15(s->pb) ^ UINT32_MAX;
    if (crc != FUNC7(s->pb) && s->error_recognition & AV_EF_CRCCHECK) {
        FUNC3(s, AV_LOG_ERROR, "Header CRC error\n");
        return AVERROR_INVALIDDATA;
    }

    c->frame_size      = samplerate * 256 / 245;
    c->last_frame_size = nb_samples % c->frame_size;
    if (!c->last_frame_size)
        c->last_frame_size = c->frame_size;
    c->totalframes = nb_samples / c->frame_size + (c->last_frame_size < c->frame_size);
    c->currentframe = 0;

    if(c->totalframes >= UINT_MAX/sizeof(uint32_t) || c->totalframes <= 0){
        FUNC3(s, AV_LOG_ERROR, "totalframes %d invalid\n", c->totalframes);
        return AVERROR_INVALIDDATA;
    }

    st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC11(st, 64, 1, samplerate);
    st->start_time = 0;
    st->duration = nb_samples;

    framepos = FUNC10(s->pb);
    if (framepos < 0)
        return framepos;
    framepos += 4 * c->totalframes + 4;

    if (FUNC12(st->codecpar, FUNC10(s->pb) - start_offset))
        return FUNC0(ENOMEM);

    FUNC8(s->pb, start_offset, SEEK_SET);
    FUNC5(s->pb, st->codecpar->extradata, st->codecpar->extradata_size);

    FUNC16(s->pb, ff_crcEDB88320_update, UINT32_MAX);
    for (i = 0; i < c->totalframes; i++) {
        uint32_t size = FUNC7(s->pb);
        int r;
        if ((r = FUNC2(st, framepos, i * c->frame_size, size, 0,
                                    AVINDEX_KEYFRAME)) < 0)
            return r;
        framepos += size;
    }
    crc = FUNC15(s->pb) ^ UINT32_MAX;
    if (crc != FUNC7(s->pb) && s->error_recognition & AV_EF_CRCCHECK) {
        FUNC3(s, AV_LOG_ERROR, "Seek table CRC error\n");
        return AVERROR_INVALIDDATA;
    }

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_TTA;
    st->codecpar->channels = channels;
    st->codecpar->sample_rate = samplerate;
    st->codecpar->bits_per_coded_sample = bps;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t pos = FUNC10(s->pb);
        FUNC13(s);
        FUNC8(s->pb, pos, SEEK_SET);
    }

    return 0;
}