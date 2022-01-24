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

/* Type definitions */
struct TYPE_18__ {TYPE_1__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_17__ {int flags; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_16__ {scalar_t__ freq; TYPE_3__ pkt; } ;
struct TYPE_15__ {scalar_t__ extradata; scalar_t__ extradata_size; } ;
typedef  TYPE_2__ DumpExtradataContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PKT_FLAG_KEY ; 
 scalar_t__ DUMP_FREQ_ALL ; 
 scalar_t__ DUMP_FREQ_KEYFRAME ; 
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ INT_MAX ; 
 int FUNC1 (TYPE_3__*,scalar_t__) ; 
 int FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(AVBSFContext *ctx, AVPacket *out)
{
    DumpExtradataContext *s = ctx->priv_data;
    AVPacket *in = &s->pkt;
    int ret = 0;

    ret = FUNC5(ctx, in);
    if (ret < 0)
        return ret;

    if (ctx->par_in->extradata &&
        (s->freq == DUMP_FREQ_ALL ||
         (s->freq == DUMP_FREQ_KEYFRAME && in->flags & AV_PKT_FLAG_KEY)) &&
         in->size >= ctx->par_in->extradata_size &&
         FUNC6(in->data, ctx->par_in->extradata, ctx->par_in->extradata_size)) {
        if (in->size >= INT_MAX - ctx->par_in->extradata_size) {
            ret = FUNC0(ERANGE);
            goto fail;
        }

        ret = FUNC1(out, in->size + ctx->par_in->extradata_size);
        if (ret < 0)
            goto fail;

        ret = FUNC2(out, in);
        if (ret < 0) {
            FUNC4(out);
            goto fail;
        }

        FUNC7(out->data, ctx->par_in->extradata, ctx->par_in->extradata_size);
        FUNC7(out->data + ctx->par_in->extradata_size, in->data, in->size);
    } else {
        FUNC3(out, in);
    }

fail:
    FUNC4(in);

    return ret;
}