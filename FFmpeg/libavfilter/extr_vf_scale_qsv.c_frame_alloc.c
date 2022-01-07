
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int mfxStatus ;
typedef TYPE_1__* mfxHDL ;
struct TYPE_10__ {int NumFrameActual; int mids; } ;
typedef TYPE_2__ mfxFrameAllocResponse ;
struct TYPE_11__ {int Type; } ;
typedef TYPE_3__ mfxFrameAllocRequest ;
struct TYPE_12__ {int nb_mem_ids_out; int mem_ids_out; int nb_mem_ids_in; int mem_ids_in; } ;
struct TYPE_9__ {TYPE_4__* priv; } ;
typedef TYPE_4__ QSVScaleContext ;
typedef TYPE_1__ AVFilterContext ;


 int MFX_ERR_NONE ;
 int MFX_ERR_UNSUPPORTED ;
 int MFX_MEMTYPE_EXTERNAL_FRAME ;
 int MFX_MEMTYPE_FROM_VPPIN ;
 int MFX_MEMTYPE_FROM_VPPOUT ;
 int MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET ;

__attribute__((used)) static mfxStatus frame_alloc(mfxHDL pthis, mfxFrameAllocRequest *req,
                             mfxFrameAllocResponse *resp)
{
    AVFilterContext *ctx = pthis;
    QSVScaleContext *s = ctx->priv;

    if (!(req->Type & MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET) ||
        !(req->Type & (MFX_MEMTYPE_FROM_VPPIN | MFX_MEMTYPE_FROM_VPPOUT)) ||
        !(req->Type & MFX_MEMTYPE_EXTERNAL_FRAME))
        return MFX_ERR_UNSUPPORTED;

    if (req->Type & MFX_MEMTYPE_FROM_VPPIN) {
        resp->mids = s->mem_ids_in;
        resp->NumFrameActual = s->nb_mem_ids_in;
    } else {
        resp->mids = s->mem_ids_out;
        resp->NumFrameActual = s->nb_mem_ids_out;
    }

    return MFX_ERR_NONE;
}
