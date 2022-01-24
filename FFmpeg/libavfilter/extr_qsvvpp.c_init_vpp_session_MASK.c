#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mfxVersion ;
typedef  int /*<<< orphan*/  mfxIMPL ;
typedef  int /*<<< orphan*/  mfxHandleType ;
typedef  scalar_t__ mfxHDL ;
struct TYPE_30__ {int /*<<< orphan*/  Free; int /*<<< orphan*/  GetHDL; int /*<<< orphan*/  Unlock; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Alloc; TYPE_6__* pthis; } ;
typedef  TYPE_5__ mfxFrameAllocator ;
struct TYPE_34__ {int initial_pool_size; int /*<<< orphan*/  sw_format; void* height; void* width; scalar_t__ format; TYPE_7__* hwctx; TYPE_13__* device_ref; } ;
struct TYPE_33__ {int /*<<< orphan*/  session; } ;
struct TYPE_32__ {int nb_surfaces; scalar_t__ surfaces; void* frame_type; } ;
struct TYPE_28__ {int BufferSz; int /*<<< orphan*/  BufferId; } ;
struct TYPE_27__ {int NumSurface; void* Type; scalar_t__* Surfaces; } ;
struct TYPE_26__ {int NumSurface; void* Type; scalar_t__* Surfaces; } ;
struct TYPE_29__ {TYPE_3__ Header; TYPE_2__ Out; TYPE_1__ In; } ;
struct TYPE_31__ {int nb_surface_ptrs_in; int nb_surface_ptrs_out; int /*<<< orphan*/  session; void* out_mem_mode; void* in_mem_mode; TYPE_4__ opaque_alloc; scalar_t__* surface_ptrs_out; scalar_t__* surface_ptrs_in; int /*<<< orphan*/  out_sw_format; } ;
struct TYPE_25__ {scalar_t__ data; } ;
struct TYPE_24__ {scalar_t__ extra_hw_frames; TYPE_13__* hw_device_ctx; TYPE_11__** outputs; TYPE_11__** inputs; } ;
struct TYPE_23__ {scalar_t__ format; TYPE_13__* hw_frames_ctx; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_22__ {TYPE_8__* hwctx; } ;
typedef  TYPE_6__ QSVVPPContext ;
typedef  TYPE_7__ AVQSVFramesContext ;
typedef  TYPE_8__ AVQSVDeviceContext ;
typedef  TYPE_9__ AVHWFramesContext ;
typedef  TYPE_10__ AVHWDeviceContext ;
typedef  TYPE_11__ AVFilterLink ;
typedef  TYPE_12__ AVFilterContext ;
typedef  TYPE_13__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_QSV ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int MFX_ERR_NONE ; 
 int /*<<< orphan*/  MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION ; 
 void* MFX_MEMTYPE_OPAQUE_FRAME ; 
 void* MFX_MEMTYPE_SYSTEM_MEMORY ; 
 void* MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_13__**) ; 
 TYPE_13__* FUNC14 (TYPE_13__*) ; 
 int FUNC15 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_12__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC17 (int,int) ; 
 int /*<<< orphan*/  frame_alloc ; 
 int /*<<< orphan*/  frame_free ; 
 int /*<<< orphan*/  frame_get_hdl ; 
 int /*<<< orphan*/  frame_lock ; 
 int /*<<< orphan*/  frame_unlock ; 
 int /*<<< orphan*/ * handle_types ; 

__attribute__((used)) static int FUNC18(AVFilterContext *avctx, QSVVPPContext *s)
{
    AVFilterLink                 *inlink = avctx->inputs[0];
    AVFilterLink                *outlink = avctx->outputs[0];
    AVQSVFramesContext  *in_frames_hwctx = NULL;
    AVQSVFramesContext *out_frames_hwctx = NULL;

    AVBufferRef *device_ref;
    AVHWDeviceContext *device_ctx;
    AVQSVDeviceContext *device_hwctx;
    mfxHDL handle;
    mfxHandleType handle_type;
    mfxVersion ver;
    mfxIMPL impl;
    int ret, i;

    if (inlink->hw_frames_ctx) {
        AVHWFramesContext *frames_ctx = (AVHWFramesContext *)inlink->hw_frames_ctx->data;

        device_ref      = frames_ctx->device_ref;
        in_frames_hwctx = frames_ctx->hwctx;

        s->in_mem_mode = in_frames_hwctx->frame_type;

        s->surface_ptrs_in = FUNC17(in_frames_hwctx->nb_surfaces,
                                              sizeof(*s->surface_ptrs_in));
        if (!s->surface_ptrs_in)
            return FUNC0(ENOMEM);

        for (i = 0; i < in_frames_hwctx->nb_surfaces; i++)
            s->surface_ptrs_in[i] = in_frames_hwctx->surfaces + i;

        s->nb_surface_ptrs_in = in_frames_hwctx->nb_surfaces;
    } else if (avctx->hw_device_ctx) {
        device_ref     = avctx->hw_device_ctx;
        s->in_mem_mode = MFX_MEMTYPE_SYSTEM_MEMORY;
    } else {
        FUNC16(avctx, AV_LOG_ERROR, "No hw context provided.\n");
        return FUNC0(EINVAL);
    }

    device_ctx   = (AVHWDeviceContext *)device_ref->data;
    device_hwctx = device_ctx->hwctx;

    if (outlink->format == AV_PIX_FMT_QSV) {
        AVHWFramesContext *out_frames_ctx;
        AVBufferRef *out_frames_ref = FUNC14(device_ref);
        if (!out_frames_ref)
            return FUNC0(ENOMEM);

        s->out_mem_mode = FUNC3(s->in_mem_mode) ?
                          MFX_MEMTYPE_OPAQUE_FRAME :
                          MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET;

        out_frames_ctx   = (AVHWFramesContext *)out_frames_ref->data;
        out_frames_hwctx = out_frames_ctx->hwctx;

        out_frames_ctx->format            = AV_PIX_FMT_QSV;
        out_frames_ctx->width             = FUNC1(outlink->w, 32);
        out_frames_ctx->height            = FUNC1(outlink->h, 32);
        out_frames_ctx->sw_format         = s->out_sw_format;
        out_frames_ctx->initial_pool_size = 64;
        if (avctx->extra_hw_frames > 0)
            out_frames_ctx->initial_pool_size += avctx->extra_hw_frames;
        out_frames_hwctx->frame_type      = s->out_mem_mode;

        ret = FUNC15(out_frames_ref);
        if (ret < 0) {
            FUNC13(&out_frames_ref);
            FUNC16(avctx, AV_LOG_ERROR, "Error creating frames_ctx for output pad.\n");
            return ret;
        }

        s->surface_ptrs_out = FUNC17(out_frames_hwctx->nb_surfaces,
                                               sizeof(*s->surface_ptrs_out));
        if (!s->surface_ptrs_out) {
            FUNC13(&out_frames_ref);
            return FUNC0(ENOMEM);
        }

        for (i = 0; i < out_frames_hwctx->nb_surfaces; i++)
            s->surface_ptrs_out[i] = out_frames_hwctx->surfaces + i;
        s->nb_surface_ptrs_out = out_frames_hwctx->nb_surfaces;

        FUNC13(&outlink->hw_frames_ctx);
        outlink->hw_frames_ctx = out_frames_ref;
    } else
        s->out_mem_mode = MFX_MEMTYPE_SYSTEM_MEMORY;

    /* extract the properties of the "master" session given to us */
    ret = FUNC7(device_hwctx->session, &impl);
    if (ret == MFX_ERR_NONE)
        ret = FUNC8(device_hwctx->session, &ver);
    if (ret != MFX_ERR_NONE) {
        FUNC16(avctx, AV_LOG_ERROR, "Error querying the session attributes\n");
        return AVERROR_UNKNOWN;
    }

    for (i = 0; i < FUNC2(handle_types); i++) {
        ret = FUNC9(device_hwctx->session, handle_types[i], &handle);
        if (ret == MFX_ERR_NONE) {
            handle_type = handle_types[i];
            break;
        }
    }

    if (ret != MFX_ERR_NONE) {
        FUNC16(avctx, AV_LOG_ERROR, "Error getting the session handle\n");
        return AVERROR_UNKNOWN;
    }

    /* create a "slave" session with those same properties, to be used for vpp */
    ret = FUNC5(impl, &ver, &s->session);
    if (ret != MFX_ERR_NONE) {
        FUNC16(avctx, AV_LOG_ERROR, "Error initializing a session for scaling\n");
        return AVERROR_UNKNOWN;
    }

    if (handle) {
        ret = FUNC11(s->session, handle_type, handle);
        if (ret != MFX_ERR_NONE)
            return AVERROR_UNKNOWN;
    }

    if (FUNC12(ver, 1, 25)) {
        ret = FUNC6(device_hwctx->session, s->session);
        if (ret != MFX_ERR_NONE)
            return AVERROR_UNKNOWN;
    }

    if (FUNC3(s->in_mem_mode) || FUNC3(s->out_mem_mode)) {
        s->opaque_alloc.In.Surfaces   = s->surface_ptrs_in;
        s->opaque_alloc.In.NumSurface = s->nb_surface_ptrs_in;
        s->opaque_alloc.In.Type       = s->in_mem_mode;

        s->opaque_alloc.Out.Surfaces   = s->surface_ptrs_out;
        s->opaque_alloc.Out.NumSurface = s->nb_surface_ptrs_out;
        s->opaque_alloc.Out.Type       = s->out_mem_mode;

        s->opaque_alloc.Header.BufferId = MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION;
        s->opaque_alloc.Header.BufferSz = sizeof(s->opaque_alloc);
    } else if (FUNC4(s->in_mem_mode) || FUNC4(s->out_mem_mode)) {
        mfxFrameAllocator frame_allocator = {
            .pthis  = s,
            .Alloc  = frame_alloc,
            .Lock   = frame_lock,
            .Unlock = frame_unlock,
            .GetHDL = frame_get_hdl,
            .Free   = frame_free,
        };

        ret = FUNC10(s->session, &frame_allocator);
        if (ret != MFX_ERR_NONE)
            return AVERROR_UNKNOWN;
    }

    return 0;
}