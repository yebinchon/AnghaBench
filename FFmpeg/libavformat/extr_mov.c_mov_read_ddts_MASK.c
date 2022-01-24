#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {TYPE_5__* fc; } ;
struct TYPE_6__ {scalar_t__ sample_rate; int frame_size; int channel_layout; int /*<<< orphan*/  channels; void* bits_per_coded_sample; void* bit_rate; } ;
typedef  TYPE_2__ MOVContext ;
typedef  int /*<<< orphan*/  MOVAtom ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_CH_FRONT_CENTER ; 
 int AV_CH_FRONT_LEFT ; 
 int AV_CH_FRONT_RIGHT ; 
 int AV_CH_LOW_FREQUENCY ; 
 int AV_CH_SIDE_LEFT ; 
 int AV_CH_SIDE_RIGHT ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int const FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    const uint32_t ddts_size = 20;
    AVStream *st = NULL;
    uint8_t *buf = NULL;
    uint32_t frame_duration_code = 0;
    uint32_t channel_layout_code = 0;
    GetBitContext gb;

    buf = FUNC4(ddts_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!buf) {
        return FUNC0(ENOMEM);
    }
    if (FUNC5(pb, buf, ddts_size) < ddts_size) {
        FUNC1(buf);
        return AVERROR_INVALIDDATA;
    }

    FUNC8(&gb, buf, 8*ddts_size);

    if (c->fc->nb_streams < 1) {
        FUNC1(buf);
        return 0;
    }
    st = c->fc->streams[c->fc->nb_streams-1];

    st->codecpar->sample_rate = FUNC7(&gb, 32);
    if (st->codecpar->sample_rate <= 0) {
        FUNC3(c->fc, AV_LOG_ERROR, "Invalid sample rate %d\n", st->codecpar->sample_rate);
        FUNC1(buf);
        return AVERROR_INVALIDDATA;
    }
    FUNC10(&gb, 32); /* max bitrate */
    st->codecpar->bit_rate = FUNC7(&gb, 32);
    st->codecpar->bits_per_coded_sample = FUNC6(&gb, 8);
    frame_duration_code = FUNC6(&gb, 2);
    FUNC9(&gb, 30); /* various fields */
    channel_layout_code = FUNC6(&gb, 16);

    st->codecpar->frame_size =
            (frame_duration_code == 0) ? 512 :
            (frame_duration_code == 1) ? 1024 :
            (frame_duration_code == 2) ? 2048 :
            (frame_duration_code == 3) ? 4096 : 0;

    if (channel_layout_code > 0xff) {
        FUNC3(c->fc, AV_LOG_WARNING, "Unsupported DTS audio channel layout");
    }
    st->codecpar->channel_layout =
            ((channel_layout_code & 0x1) ? AV_CH_FRONT_CENTER : 0) |
            ((channel_layout_code & 0x2) ? AV_CH_FRONT_LEFT : 0) |
            ((channel_layout_code & 0x2) ? AV_CH_FRONT_RIGHT : 0) |
            ((channel_layout_code & 0x4) ? AV_CH_SIDE_LEFT : 0) |
            ((channel_layout_code & 0x4) ? AV_CH_SIDE_RIGHT : 0) |
            ((channel_layout_code & 0x8) ? AV_CH_LOW_FREQUENCY : 0);

    st->codecpar->channels = FUNC2(st->codecpar->channel_layout);
    FUNC1(buf);

    return 0;
}