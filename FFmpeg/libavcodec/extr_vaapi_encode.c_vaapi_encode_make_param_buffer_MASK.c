#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VAStatus ;
typedef  int /*<<< orphan*/  VABufferID ;
struct TYPE_9__ {scalar_t__ nb_param_buffers; int /*<<< orphan*/ * param_buffers; } ;
typedef  TYPE_2__ VAAPIEncodePicture ;
struct TYPE_10__ {int /*<<< orphan*/  va_context; TYPE_1__* hwctx; } ;
typedef  TYPE_3__ VAAPIEncodeContext ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,scalar_t__,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx,
                                          VAAPIEncodePicture *pic,
                                          int type, char *data, size_t len)
{
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VAStatus vas;
    VABufferID *tmp;
    VABufferID buffer;

    tmp = FUNC2(pic->param_buffers, sizeof(*tmp), pic->nb_param_buffers + 1);
    if (!tmp)
        return FUNC0(ENOMEM);
    pic->param_buffers = tmp;

    vas = FUNC3(ctx->hwctx->display, ctx->va_context,
                         type, len, 1, data, &buffer);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to create parameter buffer "
               "(type %d): %d (%s).\n", type, vas, FUNC4(vas));
        return FUNC0(EIO);
    }
    pic->param_buffers[pic->nb_param_buffers++] = buffer;

    FUNC1(avctx, AV_LOG_DEBUG, "Param buffer (%d) is %#x.\n",
           type, buffer);
    return 0;
}