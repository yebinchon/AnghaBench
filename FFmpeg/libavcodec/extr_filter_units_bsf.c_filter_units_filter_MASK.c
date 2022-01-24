#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* priv_data; } ;
struct TYPE_14__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_13__ {scalar_t__ mode; int nb_types; scalar_t__* type_list; int /*<<< orphan*/  cbc; TYPE_3__ fragment; } ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_2__ FilterUnitsContext ;
typedef  TYPE_3__ CodedBitstreamFragment ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_4__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ NOOP ; 
 scalar_t__ REMOVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(AVBSFContext *bsf, AVPacket *pkt)
{
    FilterUnitsContext      *ctx = bsf->priv_data;
    CodedBitstreamFragment *frag = &ctx->fragment;
    int err, i, j;

    err = FUNC3(bsf, pkt);
    if (err < 0)
        return err;

    if (ctx->mode == NOOP)
        return 0;

    err = FUNC6(ctx->cbc, frag, pkt);
    if (err < 0) {
        FUNC1(bsf, AV_LOG_ERROR, "Failed to read packet.\n");
        goto fail;
    }

    for (i = frag->nb_units - 1; i >= 0; i--) {
        for (j = 0; j < ctx->nb_types; j++) {
            if (frag->units[i].type == ctx->type_list[j])
                break;
        }
        if (ctx->mode == REMOVE ? j <  ctx->nb_types
                                : j >= ctx->nb_types)
            FUNC4(ctx->cbc, frag, i);
    }

    if (frag->nb_units == 0) {
        // Don't return packets with nothing in them.
        err = FUNC0(EAGAIN);
        goto fail;
    }

    err = FUNC7(ctx->cbc, pkt, frag);
    if (err < 0) {
        FUNC1(bsf, AV_LOG_ERROR, "Failed to write packet.\n");
        goto fail;
    }

fail:
    if (err < 0)
        FUNC2(pkt);
    FUNC5(ctx->cbc, frag);

    return err;
}