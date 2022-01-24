#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_8__ {int /*<<< orphan*/  trace_level; scalar_t__ trace_enable; int /*<<< orphan*/ * decompose_unit_types; void* priv_data; TYPE_1__ const* codec; void* log_ctx; } ;
struct TYPE_7__ {int codec_id; int priv_data_size; } ;
typedef  TYPE_1__ CodedBitstreamType ;
typedef  TYPE_2__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 void* FUNC3 (int) ; 
 TYPE_1__** cbs_type_table ; 

int FUNC4(CodedBitstreamContext **ctx_ptr,
                enum AVCodecID codec_id, void *log_ctx)
{
    CodedBitstreamContext *ctx;
    const CodedBitstreamType *type;
    int i;

    type = NULL;
    for (i = 0; i < FUNC1(cbs_type_table); i++) {
        if (cbs_type_table[i]->codec_id == codec_id) {
            type = cbs_type_table[i];
            break;
        }
    }
    if (!type)
        return FUNC0(EINVAL);

    ctx = FUNC3(sizeof(*ctx));
    if (!ctx)
        return FUNC0(ENOMEM);

    ctx->log_ctx = log_ctx;
    ctx->codec   = type;

    ctx->priv_data = FUNC3(ctx->codec->priv_data_size);
    if (!ctx->priv_data) {
        FUNC2(&ctx);
        return FUNC0(ENOMEM);
    }

    ctx->decompose_unit_types = NULL;

    ctx->trace_enable = 0;
    ctx->trace_level  = AV_LOG_TRACE;

    *ctx_ptr = ctx;
    return 0;
}