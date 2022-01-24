#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int length_size; int new_idr; int extradata_parsed; scalar_t__ idr_pps_seen; scalar_t__ idr_sps_seen; } ;
struct TYPE_7__ {int extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ H264BSFContext ;
typedef  TYPE_3__ AVBSFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVBSFContext *ctx)
{
    H264BSFContext *s = ctx->priv_data;
    int extra_size = ctx->par_in->extradata_size;
    int ret;

    /* retrieve sps and pps NAL units from extradata */
    if (!extra_size                                               ||
        (extra_size >= 3 && FUNC0(ctx->par_in->extradata) == 1) ||
        (extra_size >= 4 && FUNC1(ctx->par_in->extradata) == 1)) {
        FUNC2(ctx, AV_LOG_VERBOSE,
               "The input looks like it is Annex B already\n");
    } else if (extra_size >= 6) {
        ret = FUNC3(ctx, AV_INPUT_BUFFER_PADDING_SIZE);
        if (ret < 0)
            return ret;

        s->length_size      = ret;
        s->new_idr          = 1;
        s->idr_sps_seen     = 0;
        s->idr_pps_seen     = 0;
        s->extradata_parsed = 1;
    } else {
        FUNC2(ctx, AV_LOG_ERROR, "Invalid extradata size: %d\n", extra_size);
        return AVERROR_INVALIDDATA;
    }

    return 0;
}