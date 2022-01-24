#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * out; int /*<<< orphan*/  temp_buffer; TYPE_2__* avf; } ;
typedef  TYPE_1__ VariantStream ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(VariantStream *vs, int *range_length)
{
    AVFormatContext *ctx = vs->avf;

    if (!ctx->pb) {
        return FUNC0(EINVAL);
    }

    // flush
    FUNC1(ctx, NULL);
    FUNC3(ctx->pb);

    // write out to file
    *range_length = FUNC2(ctx->pb, &vs->temp_buffer);
    ctx->pb = NULL;
    FUNC5(vs->out, vs->temp_buffer, *range_length);
    FUNC3(vs->out);

    // re-open buffer
    return FUNC4(&ctx->pb);
}