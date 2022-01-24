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
typedef  size_t VAStatus ;
struct TYPE_11__ {int nb_slices; int slices_allocated; int /*<<< orphan*/ * slice_buffers; } ;
typedef  TYPE_3__ VAAPIDecodePicture ;
struct TYPE_12__ {TYPE_2__* hwctx; int /*<<< orphan*/  va_context; } ;
typedef  TYPE_4__ VAAPIDecodeContext ;
struct TYPE_13__ {TYPE_1__* internal; } ;
struct TYPE_10__ {int /*<<< orphan*/  display; } ;
struct TYPE_9__ {TYPE_4__* hwaccel_priv_data; } ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  VASliceDataBufferType ; 
 int /*<<< orphan*/  VASliceParameterBufferType ; 
 size_t VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*,size_t,size_t,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 

int FUNC7(AVCodecContext *avctx,
                                      VAAPIDecodePicture *pic,
                                      const void *params_data,
                                      size_t params_size,
                                      const void *slice_data,
                                      size_t slice_size)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;
    int index;

    FUNC1(pic->nb_slices <= pic->slices_allocated);
    if (pic->nb_slices == pic->slices_allocated) {
        if (pic->slices_allocated > 0)
            pic->slices_allocated *= 2;
        else
            pic->slices_allocated = 64;

        pic->slice_buffers =
            FUNC3(pic->slice_buffers,
                             pic->slices_allocated,
                             2 * sizeof(*pic->slice_buffers));
        if (!pic->slice_buffers)
            return FUNC0(ENOMEM);
    }
    FUNC1(pic->nb_slices + 1 <= pic->slices_allocated);

    index = 2 * pic->nb_slices;

    vas = FUNC4(ctx->hwctx->display, ctx->va_context,
                         VASliceParameterBufferType,
                         params_size, 1, (void*)params_data,
                         &pic->slice_buffers[index]);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to create slice "
               "parameter buffer: %d (%s).\n", vas, FUNC6(vas));
        return FUNC0(EIO);
    }

    FUNC2(avctx, AV_LOG_DEBUG, "Slice %d param buffer (%zu bytes) "
           "is %#x.\n", pic->nb_slices, params_size,
           pic->slice_buffers[index]);

    vas = FUNC4(ctx->hwctx->display, ctx->va_context,
                         VASliceDataBufferType,
                         slice_size, 1, (void*)slice_data,
                         &pic->slice_buffers[index + 1]);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to create slice "
               "data buffer (size %zu): %d (%s).\n",
               slice_size, vas, FUNC6(vas));
        FUNC5(ctx->hwctx->display,
                        pic->slice_buffers[index]);
        return FUNC0(EIO);
    }

    FUNC2(avctx, AV_LOG_DEBUG, "Slice %d data buffer (%zu bytes) "
           "is %#x.\n", pic->nb_slices, slice_size,
           pic->slice_buffers[index + 1]);

    ++pic->nb_slices;
    return 0;
}