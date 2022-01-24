#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_13__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {scalar_t__ data_end; } ;
struct TYPE_10__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ MMFContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_YAMAHA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    MMFContext *mmf = s->priv_data;
    unsigned int tag;
    AVIOContext *pb = s->pb;
    AVStream *st;
    int64_t size;
    int rate, params;

    tag = FUNC6(pb);
    if (tag != FUNC1('M', 'M', 'M', 'D'))
        return AVERROR_INVALIDDATA;
    FUNC7(pb, 4); /* file_size */

    /* Skip some unused chunks that may or may not be present */
    for (;; FUNC7(pb, size)) {
        tag  = FUNC6(pb);
        size = FUNC5(pb);
        if (tag == FUNC1('C', 'N', 'T', 'I'))
            continue;
        if (tag == FUNC1('O', 'P', 'D', 'A'))
            continue;
        break;
    }

    /* Tag = "ATRx", where "x" = track number */
    if ((tag & 0xffffff) == FUNC1('M', 'T', 'R', 0)) {
        FUNC2(s, AV_LOG_ERROR, "MIDI like format found, unsupported\n");
        return AVERROR_PATCHWELCOME;
    }
    if ((tag & 0xffffff) != FUNC1('A', 'T', 'R', 0)) {
        FUNC2(s, AV_LOG_ERROR, "Unsupported SMAF chunk %08x\n", tag);
        return AVERROR_PATCHWELCOME;
    }

    FUNC4(pb); /* format type */
    FUNC4(pb); /* sequence type */
    params = FUNC4(pb); /* (channel << 7) | (format << 4) | rate */
    rate   = FUNC10(params & 0x0f);
    if (rate < 0) {
        FUNC2(s, AV_LOG_ERROR, "Invalid sample rate\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC4(pb); /* wave base bit */
    FUNC4(pb); /* time base d */
    FUNC4(pb); /* time base g */

    /* Skip some unused chunks that may or may not be present */
    for (;; FUNC7(pb, size)) {
        tag  = FUNC6(pb);
        size = FUNC5(pb);
        if (tag == FUNC1('A', 't', 's', 'q'))
            continue;
        if (tag == FUNC1('A', 's', 'p', 'I'))
            continue;
        break;
    }

    /* Make sure it's followed by an Awa chunk, aka wave data */
    if ((tag & 0xffffff) != FUNC1('A', 'w', 'a', 0)) {
        FUNC2(s, AV_LOG_ERROR, "Unexpected SMAF chunk %08x\n", tag);
        return AVERROR_INVALIDDATA;
    }
    mmf->data_end = FUNC8(pb) + size;

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type            = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id              = AV_CODEC_ID_ADPCM_YAMAHA;
    st->codecpar->sample_rate           = rate;
    st->codecpar->channels              = (params >> 7) + 1;
    st->codecpar->channel_layout        = params >> 7 ? AV_CH_LAYOUT_STEREO : AV_CH_LAYOUT_MONO;
    st->codecpar->bits_per_coded_sample = 4;
    st->codecpar->bit_rate              = st->codecpar->sample_rate *
                                          st->codecpar->bits_per_coded_sample;

    FUNC9(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}