#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  par_out; TYPE_12__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_18__ {scalar_t__ level; int /*<<< orphan*/  cbc; TYPE_3__ access_unit; } ;
struct TYPE_17__ {scalar_t__ type; int /*<<< orphan*/  content; } ;
struct TYPE_16__ {scalar_t__ extradata; } ;
typedef  TYPE_2__ H265MetadataContext ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  TYPE_4__ AVBSFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_HEVC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ HEVC_NAL_SPS ; 
 scalar_t__ HEVC_NAL_VPS ; 
 scalar_t__ LEVEL_AUTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_12__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVBSFContext *bsf)
{
    H265MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *au = &ctx->access_unit;
    int err, i;

    err = FUNC2(&ctx->cbc, AV_CODEC_ID_HEVC, bsf);
    if (err < 0)
        return err;

    if (bsf->par_in->extradata) {
        err = FUNC3(ctx->cbc, au, bsf->par_in);
        if (err < 0) {
            FUNC0(bsf, AV_LOG_ERROR, "Failed to read extradata.\n");
            goto fail;
        }

        if (ctx->level == LEVEL_AUTO)
            FUNC5(bsf, au);

        for (i = 0; i < au->nb_units; i++) {
            if (au->units[i].type == HEVC_NAL_VPS) {
                err = FUNC7(bsf, au->units[i].content);
                if (err < 0)
                    goto fail;
            }
            if (au->units[i].type == HEVC_NAL_SPS) {
                err = FUNC6(bsf, au->units[i].content);
                if (err < 0)
                    goto fail;
            }
        }

        err = FUNC4(ctx->cbc, bsf->par_out, au);
        if (err < 0) {
            FUNC0(bsf, AV_LOG_ERROR, "Failed to write extradata.\n");
            goto fail;
        }
    }

    err = 0;
fail:
    FUNC1(ctx->cbc, au);
    return err;
}