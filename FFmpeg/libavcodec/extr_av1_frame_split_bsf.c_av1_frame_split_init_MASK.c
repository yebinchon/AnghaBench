#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  extradata_size; } ;
struct TYPE_12__ {int /*<<< orphan*/  nb_decompose_unit_types; int /*<<< orphan*/ * decompose_unit_types; } ;
struct TYPE_11__ {TYPE_3__* cbc; int /*<<< orphan*/  buffer_pkt; int /*<<< orphan*/  temporal_unit; } ;
struct TYPE_10__ {TYPE_4__* par_in; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  CodedBitstreamUnitType ;
typedef  int /*<<< orphan*/  CodedBitstreamFragment ;
typedef  TYPE_1__ AVBSFContext ;
typedef  TYPE_2__ AV1FSplitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CODEC_ID_AV1 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ decompose_unit_types ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__**,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(AVBSFContext *ctx)
{
    AV1FSplitContext *s = ctx->priv_data;
    CodedBitstreamFragment *td = &s->temporal_unit;
    int ret;

    s->buffer_pkt = FUNC3();
    if (!s->buffer_pkt)
        return FUNC0(ENOMEM);

    ret = FUNC5(&s->cbc, AV_CODEC_ID_AV1, ctx);
    if (ret < 0)
        return ret;

    s->cbc->decompose_unit_types    = (CodedBitstreamUnitType*)decompose_unit_types;
    s->cbc->nb_decompose_unit_types = FUNC1(decompose_unit_types);

    if (!ctx->par_in->extradata_size)
        return 0;

    ret = FUNC6(s->cbc, td, ctx->par_in);
    if (ret < 0)
        FUNC2(ctx, AV_LOG_WARNING, "Failed to parse extradata.\n");

    FUNC4(s->cbc, td);

    return 0;
}