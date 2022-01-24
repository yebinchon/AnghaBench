#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_1__* oc; int /*<<< orphan*/  avctx; } ;
struct LATMContext {int initialized; TYPE_4__ aac_ctx; } ;
struct TYPE_17__ {long long extradata_size; int /*<<< orphan*/  extradata; struct LATMContext* priv_data; } ;
struct TYPE_16__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int object_type; } ;
struct TYPE_15__ {TYPE_10__ m4ac; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
#define  AOT_ER_AAC_ELD 131 
#define  AOT_ER_AAC_LC 130 
#define  AOT_ER_AAC_LD 129 
#define  AOT_ER_AAC_LTP 128 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int LOAS_SYNC_WORD ; 
 int FUNC0 (TYPE_3__*,void*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,void*,int*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*,TYPE_10__*,int /*<<< orphan*/ ,long long,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (struct LATMContext*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *out,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    struct LATMContext *latmctx = avctx->priv_data;
    int                 muxlength, err;
    GetBitContext       gb;

    if ((err = FUNC5(&gb, avpkt->data, avpkt->size)) < 0)
        return err;

    // check for LOAS sync word
    if (FUNC4(&gb, 11) != LOAS_SYNC_WORD)
        return AVERROR_INVALIDDATA;

    muxlength = FUNC4(&gb, 13) + 3;
    // not enough data, the parser should have sorted this out
    if (muxlength > avpkt->size)
        return AVERROR_INVALIDDATA;

    if ((err = FUNC8(latmctx, &gb)))
        return (err < 0) ? err : avpkt->size;

    if (!latmctx->initialized) {
        if (!avctx->extradata) {
            *got_frame_ptr = 0;
            return avpkt->size;
        } else {
            FUNC7(&latmctx->aac_ctx);
            if ((err = FUNC3(
                    &latmctx->aac_ctx, avctx, &latmctx->aac_ctx.oc[1].m4ac,
                    avctx->extradata, avctx->extradata_size*8LL, 1)) < 0) {
                FUNC6(&latmctx->aac_ctx);
                return err;
            }
            latmctx->initialized = 1;
        }
    }

    if (FUNC9(&gb, 12) == 0xfff) {
        FUNC2(latmctx->aac_ctx.avctx, AV_LOG_ERROR,
               "ADTS header detected, probably as result of configuration "
               "misparsing\n");
        return AVERROR_INVALIDDATA;
    }

    switch (latmctx->aac_ctx.oc[1].m4ac.object_type) {
    case AOT_ER_AAC_LC:
    case AOT_ER_AAC_LTP:
    case AOT_ER_AAC_LD:
    case AOT_ER_AAC_ELD:
        err = FUNC0(avctx, out, got_frame_ptr, &gb);
        break;
    default:
        err = FUNC1(avctx, out, got_frame_ptr, &gb, avpkt);
    }
    if (err < 0)
        return err;

    return muxlength;
}