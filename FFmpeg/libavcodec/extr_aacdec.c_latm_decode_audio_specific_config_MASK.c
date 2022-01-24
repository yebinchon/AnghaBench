#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_2__* oc; TYPE_5__* avctx; } ;
struct LATMContext {scalar_t__ initialized; TYPE_6__ aac_ctx; } ;
struct TYPE_21__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
struct TYPE_20__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_19__ {scalar_t__ sample_rate; scalar_t__ chan_config; int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {scalar_t__ sample_rate; scalar_t__ chan_config; } ;
struct TYPE_18__ {TYPE_1__ m4ac; } ;
typedef  TYPE_3__ MPEG4AudioConfig ;
typedef  TYPE_4__ GetBitContext ;
typedef  TYPE_5__ AVCodecContext ;
typedef  TYPE_6__ AACContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_3__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC12(struct LATMContext *latmctx,
                                             GetBitContext *gb, int asclen)
{
    AACContext *ac        = &latmctx->aac_ctx;
    AVCodecContext *avctx = ac->avctx;
    MPEG4AudioConfig m4ac = { 0 };
    GetBitContext gbc;
    int config_start_bit  = FUNC7(gb);
    int sync_extension    = 0;
    int bits_consumed, esize, i;

    if (asclen > 0) {
        sync_extension = 1;
        asclen         = FUNC1(asclen, FUNC8(gb));
        FUNC9(&gbc, gb->buffer, config_start_bit + asclen);
        FUNC11(&gbc, config_start_bit);
    } else if (asclen == 0) {
        gbc = *gb;
    } else {
        return AVERROR_INVALIDDATA;
    }

    if (FUNC8(gb) <= 0)
        return AVERROR_INVALIDDATA;

    bits_consumed = FUNC5(NULL, avctx, &m4ac,
                                                    &gbc, config_start_bit,
                                                    sync_extension);

    if (bits_consumed < config_start_bit)
        return AVERROR_INVALIDDATA;
    bits_consumed -= config_start_bit;

    if (asclen == 0)
      asclen = bits_consumed;

    if (!latmctx->initialized ||
        ac->oc[1].m4ac.sample_rate != m4ac.sample_rate ||
        ac->oc[1].m4ac.chan_config != m4ac.chan_config) {

        if (latmctx->initialized) {
            FUNC3(avctx, AV_LOG_INFO, "audio config changed (sample_rate=%d, chan_config=%d)\n", m4ac.sample_rate, m4ac.chan_config);
        } else {
            FUNC3(avctx, AV_LOG_DEBUG, "initializing latmctx\n");
        }
        latmctx->initialized = 0;

        esize = (asclen + 7) / 8;

        if (avctx->extradata_size < esize) {
            FUNC2(avctx->extradata);
            avctx->extradata = FUNC4(esize + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!avctx->extradata)
                return FUNC0(ENOMEM);
        }

        avctx->extradata_size = esize;
        gbc = *gb;
        for (i = 0; i < esize; i++) {
          avctx->extradata[i] = FUNC6(&gbc, 8);
        }
        FUNC10(avctx->extradata+esize, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    }
    FUNC11(gb, asclen);

    return 0;
}