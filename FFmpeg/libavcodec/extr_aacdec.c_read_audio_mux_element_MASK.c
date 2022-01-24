#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {TYPE_2__* avctx; } ;
struct LATMContext {scalar_t__ audio_mux_version_A; TYPE_1__ aac_ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  extradata; } ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct LATMContext*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct LATMContext*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct LATMContext *latmctx,
                                  GetBitContext *gb)
{
    int err;
    uint8_t use_same_mux = FUNC1(gb, 1);
    if (!use_same_mux) {
        if ((err = FUNC4(latmctx, gb)) < 0)
            return err;
    } else if (!latmctx->aac_ctx.avctx->extradata) {
        FUNC0(latmctx->aac_ctx.avctx, AV_LOG_DEBUG,
               "no decoder config found\n");
        return 1;
    }
    if (latmctx->audio_mux_version_A == 0) {
        int mux_slot_length_bytes = FUNC3(latmctx, gb);
        if (mux_slot_length_bytes < 0 || mux_slot_length_bytes * 8LL > FUNC2(gb)) {
            FUNC0(latmctx->aac_ctx.avctx, AV_LOG_ERROR, "incomplete frame\n");
            return AVERROR_INVALIDDATA;
        } else if (mux_slot_length_bytes * 8 + 256 < FUNC2(gb)) {
            FUNC0(latmctx->aac_ctx.avctx, AV_LOG_ERROR,
                   "frame length mismatch %d << %d\n",
                   mux_slot_length_bytes * 8, FUNC2(gb));
            return AVERROR_INVALIDDATA;
        }
    }
    return 0;
}