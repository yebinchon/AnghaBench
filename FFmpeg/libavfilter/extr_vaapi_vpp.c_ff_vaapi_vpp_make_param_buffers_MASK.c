#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VAStatus ;
typedef  int /*<<< orphan*/  VABufferID ;
struct TYPE_7__ {scalar_t__ nb_filter_buffers; int /*<<< orphan*/ * filter_buffers; int /*<<< orphan*/  va_context; TYPE_1__* hwctx; } ;
typedef  TYPE_2__ VAAPIVPPContext ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ VAProcFilterCount ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,size_t,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(AVFilterContext *avctx,
                                    int type,
                                    const void *data,
                                    size_t size,
                                    int count)
{
    VAStatus vas;
    VABufferID buffer;
    VAAPIVPPContext *ctx   = avctx->priv;

    FUNC1(ctx->nb_filter_buffers + 1 <= VAProcFilterCount);

    vas = FUNC3(ctx->hwctx->display, ctx->va_context,
                         type, size, count, (void*)data, &buffer);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to create parameter "
               "buffer (type %d): %d (%s).\n",
               type, vas, FUNC4(vas));
        return FUNC0(EIO);
    }

    ctx->filter_buffers[ctx->nb_filter_buffers++] = buffer;

    FUNC2(avctx, AV_LOG_DEBUG, "Param buffer (type %d, %zu bytes, count %d) "
           "is %#x.\n", type, size, count, buffer);
    return 0;
}