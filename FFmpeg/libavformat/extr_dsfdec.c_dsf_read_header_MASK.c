#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_23__ {TYPE_2__* internal; TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_22__ {int seekable; } ;
struct TYPE_21__ {TYPE_1__* codecpar; } ;
struct TYPE_20__ {int audio_size; int data_end; int data_size; } ;
struct TYPE_19__ {void* data_offset; } ;
struct TYPE_18__ {int channels; int sample_rate; int block_align; long long bit_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  channel_layout; } ;
typedef  TYPE_3__ DSFContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_DSD_LSBF_PLANAR ; 
 int /*<<< orphan*/  AV_CODEC_ID_DSD_MSBF_PLANAR ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int INT_MAX ; 
 int FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_4__* FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 void* FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,int,long long) ; 
 int /*<<< orphan*/ * dsf_channel_layout ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    DSFContext *dsf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    uint64_t id3pos;
    unsigned int channel_type;

    FUNC7(pb, 4);
    if (FUNC5(pb) != 28)
        return AVERROR_INVALIDDATA;

    /* create primary stream before any id3 coverart streams */
    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC7(pb, 8);
    id3pos = FUNC5(pb);
    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
        FUNC11(s, id3pos);
        FUNC6(pb, 28, SEEK_SET);
    }

    /* fmt chunk */

    if (FUNC4(pb) != FUNC2('f', 'm', 't', ' ') || FUNC5(pb) != 52)
        return AVERROR_INVALIDDATA;

    if (FUNC4(pb) != 1) {
        FUNC9(s, "unknown format version");
        return AVERROR_INVALIDDATA;
    }

    if (FUNC4(pb)) {
        FUNC9(s, "unknown format id");
        return AVERROR_INVALIDDATA;
    }

    channel_type = FUNC4(pb);
    if (channel_type < FUNC1(dsf_channel_layout))
        st->codecpar->channel_layout = dsf_channel_layout[channel_type];
    if (!st->codecpar->channel_layout)
        FUNC9(s, "channel type %i", channel_type);

    st->codecpar->codec_type   = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels     = FUNC4(pb);
    st->codecpar->sample_rate  = FUNC4(pb) / 8;

    if (st->codecpar->channels <= 0)
        return AVERROR_INVALIDDATA;

    switch(FUNC4(pb)) {
    case 1: st->codecpar->codec_id = AV_CODEC_ID_DSD_LSBF_PLANAR; break;
    case 8: st->codecpar->codec_id = AV_CODEC_ID_DSD_MSBF_PLANAR; break;
    default:
        FUNC9(s, "unknown most significant bit");
        return AVERROR_INVALIDDATA;
    }

    dsf->audio_size = FUNC5(pb) / 8 * st->codecpar->channels;
    st->codecpar->block_align = FUNC4(pb);
    if (st->codecpar->block_align > INT_MAX / st->codecpar->channels) {
        FUNC9(s, "block_align overflow");
        return AVERROR_INVALIDDATA;
    }
    st->codecpar->block_align *= st->codecpar->channels;
    st->codecpar->bit_rate = st->codecpar->channels * st->codecpar->sample_rate * 8LL;
    FUNC10(st, 64, 1, st->codecpar->sample_rate);
    FUNC7(pb, 4);

    /* data chunk */

    dsf->data_end = FUNC8(pb);
    if (FUNC4(pb) != FUNC2('d', 'a', 't', 'a'))
        return AVERROR_INVALIDDATA;
    dsf->data_size = FUNC5(pb) - 12;
    dsf->data_end += dsf->data_size + 12;
    s->internal->data_offset = FUNC8(pb);

    return 0;
}