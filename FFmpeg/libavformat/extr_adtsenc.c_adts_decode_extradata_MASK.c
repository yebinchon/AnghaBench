#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {unsigned int objecttype; int sample_rate_index; int pce_size; int write_adts; int /*<<< orphan*/  pce_data; int /*<<< orphan*/  channel_conf; } ;
struct TYPE_5__ {unsigned int object_type; int sampling_index; int /*<<< orphan*/  chan_config; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ MPEG4AudioConfig ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_2__ ADTSContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  MAX_PCE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, ADTSContext *adts, const uint8_t *buf, int size)
{
    GetBitContext gb;
    PutBitContext pb;
    MPEG4AudioConfig m4ac;
    int off;

    FUNC5(&gb, buf, size * 8);
    off = FUNC1(&m4ac, buf, size, 1, s);
    if (off < 0)
        return off;
    FUNC8(&gb, off);
    adts->objecttype        = m4ac.object_type - 1;
    adts->sample_rate_index = m4ac.sampling_index;
    adts->channel_conf      = m4ac.chan_config;

    if (adts->objecttype > 3U) {
        FUNC0(s, AV_LOG_ERROR, "MPEG-4 AOT %d is not allowed in ADTS\n", adts->objecttype+1);
        return AVERROR_INVALIDDATA;
    }
    if (adts->sample_rate_index == 15) {
        FUNC0(s, AV_LOG_ERROR, "Escape sample rate index illegal in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (FUNC4(&gb, 1)) {
        FUNC0(s, AV_LOG_ERROR, "960/120 MDCT window is not allowed in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (FUNC4(&gb, 1)) {
        FUNC0(s, AV_LOG_ERROR, "Scalable configurations are not allowed in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (FUNC4(&gb, 1)) {
        FUNC0(s, AV_LOG_ERROR, "Extension flag is not allowed in ADTS\n");
        return AVERROR_INVALIDDATA;
    }
    if (!adts->channel_conf) {
        FUNC6(&pb, adts->pce_data, MAX_PCE_SIZE);

        FUNC7(&pb, 3, 5); //ID_PCE
        adts->pce_size = (FUNC2(&pb, &gb) + 3) / 8;
        FUNC3(&pb);
    }

    adts->write_adts = 1;

    return 0;
}