#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int block_count; unsigned int last_block_size; scalar_t__ current_block; } ;
typedef  TYPE_2__ VPKDemuxContext ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int duration; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int block_align; int sample_rate; int channels; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_PSX ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    VPKDemuxContext *vpk = s->priv_data;
    unsigned offset;
    unsigned samples_per_block;
    AVStream *st;

    vpk->current_block = 0;
    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC3(s->pb, 4);
    st->duration           = FUNC2(s->pb) * 28 / 16;
    offset                 = FUNC2(s->pb);
    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_PSX;
    st->codecpar->block_align = FUNC2(s->pb);
    st->codecpar->sample_rate = FUNC2(s->pb);
    if (st->codecpar->sample_rate <= 0 || st->codecpar->block_align <= 0)
        return AVERROR_INVALIDDATA;
    st->codecpar->channels    = FUNC2(s->pb);
    if (st->codecpar->channels <= 0)
        return AVERROR_INVALIDDATA;
    samples_per_block      = ((st->codecpar->block_align / st->codecpar->channels) * 28LL) / 16;
    if (samples_per_block <= 0)
        return AVERROR_INVALIDDATA;
    vpk->block_count       = (st->duration + (samples_per_block - 1)) / samples_per_block;
    vpk->last_block_size   = (st->duration % samples_per_block) * 16 * st->codecpar->channels / 28;

    if (offset < FUNC4(s->pb))
        return AVERROR_INVALIDDATA;
    FUNC3(s->pb, offset - FUNC4(s->pb));
    FUNC5(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}