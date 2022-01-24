#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int bits_per_coded_sample; void* sample_rate; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  ENOSYS ; 
 void* FUNC1 (float,char,char,char) ; 
#define  WAVE_FORMAT_PCM 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, const uint8_t *header,
                              int header_size)
{
    int len, bps;
    short wave_format;
    GetByteContext gb;

    FUNC6(&gb, header, header_size);

    if (FUNC5(&gb) != FUNC1('R', 'I', 'F', 'F')) {
        FUNC2(avctx, AV_LOG_ERROR, "missing RIFF tag\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC7(&gb, 4); /* chunk size */

    if (FUNC5(&gb) != FUNC1('W', 'A', 'V', 'E')) {
        FUNC2(avctx, AV_LOG_ERROR, "missing WAVE tag\n");
        return AVERROR_INVALIDDATA;
    }

    while (FUNC5(&gb) != FUNC1('f', 'm', 't', ' ')) {
        len = FUNC5(&gb);
        FUNC7(&gb, len);
        if (len < 0 || FUNC3(&gb) < 16) {
            FUNC2(avctx, AV_LOG_ERROR, "no fmt chunk found\n");
            return AVERROR_INVALIDDATA;
        }
    }
    len = FUNC5(&gb);

    if (len < 16) {
        FUNC2(avctx, AV_LOG_ERROR, "fmt chunk was too short\n");
        return AVERROR_INVALIDDATA;
    }

    wave_format = FUNC4(&gb);

    switch (wave_format) {
    case WAVE_FORMAT_PCM:
        break;
    default:
        FUNC2(avctx, AV_LOG_ERROR, "unsupported wave format\n");
        return FUNC0(ENOSYS);
    }

    FUNC7(&gb, 2); // skip channels    (already got from shorten header)
    avctx->sample_rate = FUNC5(&gb);
    FUNC7(&gb, 4); // skip bit rate    (represents original uncompressed bit rate)
    FUNC7(&gb, 2); // skip block align (not needed)
    bps = FUNC4(&gb);
    avctx->bits_per_coded_sample = bps;

    if (bps != 16 && bps != 8) {
        FUNC2(avctx, AV_LOG_ERROR, "unsupported number of bits per sample: %d\n", bps);
        return FUNC0(ENOSYS);
    }

    len -= 16;
    if (len > 0)
        FUNC2(avctx, AV_LOG_INFO, "%d header bytes unparsed\n", len);

    return 0;
}