#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VAStatus ;
typedef  int /*<<< orphan*/  VABufferID ;
struct TYPE_11__ {scalar_t__ nb_param_buffers; int /*<<< orphan*/ * param_buffers; } ;
typedef  TYPE_3__ VAAPIDecodePicture ;
struct TYPE_12__ {int /*<<< orphan*/  va_context; TYPE_1__* hwctx; } ;
typedef  TYPE_4__ VAAPIDecodeContext ;
struct TYPE_13__ {TYPE_2__* internal; } ;
struct TYPE_10__ {TYPE_4__* hwaccel_priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ MAX_PARAM_BUFFERS ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(AVCodecContext *avctx,
                                      VAAPIDecodePicture *pic,
                                      int type,
                                      const void *data,
                                      size_t size)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;
    VABufferID buffer;

    FUNC1(pic->nb_param_buffers + 1 <= MAX_PARAM_BUFFERS);

    vas = FUNC3(ctx->hwctx->display, ctx->va_context,
                         type, size, 1, (void*)data, &buffer);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to create parameter "
               "buffer (type %d): %d (%s).\n",
               type, vas, FUNC4(vas));
        return FUNC0(EIO);
    }

    pic->param_buffers[pic->nb_param_buffers++] = buffer;

    FUNC2(avctx, AV_LOG_DEBUG, "Param buffer (type %d, %zu bytes) "
           "is %#x.\n", type, size, buffer);
    return 0;
}