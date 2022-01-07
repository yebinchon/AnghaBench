
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mfxExtBuffer ;
struct TYPE_21__ {int pool; int sw_format; TYPE_8__* hwctx; TYPE_1__* internal; } ;
struct TYPE_20__ {int frame_type; int nb_surfaces; TYPE_6__* surfaces; } ;
struct TYPE_15__ {int BufferSz; int BufferId; } ;
struct TYPE_14__ {int NumSurface; int Type; TYPE_6__** Surfaces; } ;
struct TYPE_16__ {TYPE_3__ Header; TYPE_2__ In; TYPE_2__ Out; } ;
struct TYPE_19__ {int session_cond; int session_lock; scalar_t__ session_upload_init; scalar_t__ session_download_init; int * session_upload; int * session_download; int * mem_ids; TYPE_4__ opaque_alloc; int ** ext_buffers; TYPE_6__** surface_ptrs; } ;
struct TYPE_17__ {int MemId; } ;
struct TYPE_18__ {TYPE_5__ Data; } ;
struct TYPE_13__ {TYPE_7__* priv; } ;
typedef TYPE_7__ QSVFramesContext ;
typedef TYPE_8__ AVQSVFramesContext ;
typedef TYPE_9__ AVHWFramesContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int ENOSYS ;
 int MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION ;
 int MFX_MEMTYPE_OPAQUE_FRAME ;
 int av_log (TYPE_9__*,int ,char*) ;
 void* av_mallocz_array (int,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int qsv_fourcc_from_pix_fmt (int ) ;
 int qsv_init_pool (TYPE_9__*,int ) ;

__attribute__((used)) static int qsv_frames_init(AVHWFramesContext *ctx)
{
    QSVFramesContext *s = ctx->internal->priv;
    AVQSVFramesContext *frames_hwctx = ctx->hwctx;

    int opaque = !!(frames_hwctx->frame_type & MFX_MEMTYPE_OPAQUE_FRAME);

    uint32_t fourcc;
    int i, ret;

    fourcc = qsv_fourcc_from_pix_fmt(ctx->sw_format);
    if (!fourcc) {
        av_log(ctx, AV_LOG_ERROR, "Unsupported pixel format\n");
        return AVERROR(ENOSYS);
    }

    if (!ctx->pool) {
        ret = qsv_init_pool(ctx, fourcc);
        if (ret < 0) {
            av_log(ctx, AV_LOG_ERROR, "Error creating an internal frame pool\n");
            return ret;
        }
    }

    if (opaque) {
        s->surface_ptrs = av_mallocz_array(frames_hwctx->nb_surfaces,
                                           sizeof(*s->surface_ptrs));
        if (!s->surface_ptrs)
            return AVERROR(ENOMEM);

        for (i = 0; i < frames_hwctx->nb_surfaces; i++)
            s->surface_ptrs[i] = frames_hwctx->surfaces + i;

        s->opaque_alloc.In.Surfaces = s->surface_ptrs;
        s->opaque_alloc.In.NumSurface = frames_hwctx->nb_surfaces;
        s->opaque_alloc.In.Type = frames_hwctx->frame_type;

        s->opaque_alloc.Out = s->opaque_alloc.In;

        s->opaque_alloc.Header.BufferId = MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION;
        s->opaque_alloc.Header.BufferSz = sizeof(s->opaque_alloc);

        s->ext_buffers[0] = (mfxExtBuffer*)&s->opaque_alloc;
    } else {
        s->mem_ids = av_mallocz_array(frames_hwctx->nb_surfaces, sizeof(*s->mem_ids));
        if (!s->mem_ids)
            return AVERROR(ENOMEM);

        for (i = 0; i < frames_hwctx->nb_surfaces; i++)
            s->mem_ids[i] = frames_hwctx->surfaces[i].Data.MemId;
    }

    s->session_download = ((void*)0);
    s->session_upload = ((void*)0);

    s->session_download_init = 0;
    s->session_upload_init = 0;






    return 0;
}
