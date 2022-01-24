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
struct TYPE_12__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int duration; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int bit_depth; int size; int /*<<< orphan*/  read_block; } ;
struct TYPE_9__ {int channels; int sample_rate; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ SDSContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U32LE ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC1 (unsigned int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  byte2_read ; 
 int /*<<< orphan*/  byte3_read ; 
 int /*<<< orphan*/  byte4_read ; 

__attribute__((used)) static int FUNC8(AVFormatContext *ctx)
{
    SDSContext *s = ctx->priv_data;
    unsigned sample_period;
    AVIOContext *pb = ctx->pb;
    AVStream *st;

    st = FUNC2(ctx, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC6(pb, 4);
    FUNC6(pb, 2);

    s->bit_depth = FUNC3(pb);
    if (s->bit_depth < 8 || s->bit_depth > 28)
        return AVERROR_INVALIDDATA;

    if (s->bit_depth < 14) {
        s->read_block = byte2_read;
        s->size = 60 * 4;
    } else if (s->bit_depth < 21) {
        s->read_block = byte3_read;
        s->size = 40 * 4;
    } else {
        s->read_block = byte4_read;
        s->size = 30 * 4;
    }
    st->codecpar->codec_id = AV_CODEC_ID_PCM_U32LE;

    sample_period = FUNC4(pb);
    sample_period = FUNC1(sample_period);
    FUNC6(pb, 11);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels = 1;
    st->codecpar->sample_rate = sample_period ? 1000000000 / sample_period : 16000;
    st->duration = (FUNC5(pb) - 21) / (127) * s->size / 4;

    FUNC7(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}