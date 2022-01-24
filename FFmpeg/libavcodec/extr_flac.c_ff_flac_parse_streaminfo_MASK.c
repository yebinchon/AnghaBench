#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct FLACStreaminfo {int max_blocksize; scalar_t__ channels; int bps; int /*<<< orphan*/  samples; void* samplerate; void* max_framesize; } ;
struct TYPE_5__ {scalar_t__ channels; int bits_per_raw_sample; int /*<<< orphan*/  channel_layout; void* sample_rate; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FLAC_MIN_BLOCKSIZE ; 
 int FLAC_STREAMINFO_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

int FUNC9(AVCodecContext *avctx, struct FLACStreaminfo *s,
                              const uint8_t *buffer)
{
    GetBitContext gb;
    FUNC6(&gb, buffer, FLAC_STREAMINFO_SIZE*8);

    FUNC7(&gb, 16); /* skip min blocksize */
    s->max_blocksize = FUNC3(&gb, 16);
    if (s->max_blocksize < FLAC_MIN_BLOCKSIZE) {
        FUNC1(avctx, AV_LOG_WARNING, "invalid max blocksize: %d\n",
               s->max_blocksize);
        s->max_blocksize = 16;
        return AVERROR_INVALIDDATA;
    }

    FUNC7(&gb, 24); /* skip min frame size */
    s->max_framesize = FUNC5(&gb, 24);

    s->samplerate = FUNC5(&gb, 20);
    s->channels = FUNC3(&gb, 3) + 1;
    s->bps = FUNC3(&gb, 5) + 1;

    if (s->bps < 4) {
        FUNC1(avctx, AV_LOG_ERROR, "invalid bps: %d\n", s->bps);
        s->bps = 16;
        return AVERROR_INVALIDDATA;
    }

    avctx->channels = s->channels;
    avctx->sample_rate = s->samplerate;
    avctx->bits_per_raw_sample = s->bps;

    if (!avctx->channel_layout ||
        FUNC0(avctx->channel_layout) != avctx->channels)
        FUNC2(avctx);

    s->samples = FUNC4(&gb, 36);

    FUNC8(&gb, 64); /* md5 sum */
    FUNC8(&gb, 64); /* md5 sum */

    return 0;
}