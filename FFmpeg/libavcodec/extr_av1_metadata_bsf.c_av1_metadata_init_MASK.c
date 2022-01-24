#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ extradata; } ;
struct TYPE_17__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_20__ {int /*<<< orphan*/  cbc; TYPE_3__ access_unit; } ;
struct TYPE_16__ {int /*<<< orphan*/  sequence_header; } ;
struct TYPE_19__ {TYPE_2__ obu; } ;
struct TYPE_18__ {int /*<<< orphan*/  par_out; TYPE_9__* par_in; TYPE_6__* priv_data; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_5__* content; } ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  TYPE_4__ AVBSFContext ;
typedef  TYPE_5__ AV1RawOBU ;
typedef  TYPE_6__ AV1MetadataContext ;

/* Variables and functions */
 scalar_t__ AV1_OBU_SEQUENCE_HEADER ; 
 int /*<<< orphan*/  AV_CODEC_ID_AV1 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_9__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(AVBSFContext *bsf)
{
    AV1MetadataContext *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->access_unit;
    AV1RawOBU *obu;
    int err, i;

    err = FUNC3(&ctx->cbc, AV_CODEC_ID_AV1, bsf);
    if (err < 0)
        return err;

    if (bsf->par_in->extradata) {
        err = FUNC4(ctx->cbc, frag, bsf->par_in);
        if (err < 0) {
            FUNC1(bsf, AV_LOG_ERROR, "Failed to read extradata.\n");
            goto fail;
        }

        for (i = 0; i < frag->nb_units; i++) {
            if (frag->units[i].type == AV1_OBU_SEQUENCE_HEADER) {
                obu = frag->units[i].content;
                err = FUNC0(bsf, &obu->obu.sequence_header);
                if (err < 0)
                    goto fail;
            }
        }

        err = FUNC5(ctx->cbc, bsf->par_out, frag);
        if (err < 0) {
            FUNC1(bsf, AV_LOG_ERROR, "Failed to write extradata.\n");
            goto fail;
        }
    }

    err = 0;
fail:
    FUNC2(ctx->cbc, frag);
    return err;
}