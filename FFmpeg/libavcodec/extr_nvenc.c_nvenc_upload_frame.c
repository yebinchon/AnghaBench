
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_31__ {scalar_t__ pix_fmt; TYPE_4__* priv_data; } ;
struct TYPE_30__ {int * linesize; } ;
struct TYPE_29__ {int (* nvEncUnlockInputBuffer ) (int ,int ) ;int (* nvEncLockInputBuffer ) (int ,TYPE_5__*) ;int (* nvEncMapInputResource ) (int ,TYPE_10__*) ;} ;
struct TYPE_28__ {int pitch; int inputBuffer; int version; int member_0; } ;
struct TYPE_26__ {TYPE_6__ nvenc_funcs; } ;
struct TYPE_27__ {int nvencoder; TYPE_1__* registered_frames; TYPE_3__ nvenc_dload_funcs; } ;
struct TYPE_25__ {int reg_idx; int input_surface; int pitch; int format; int in_ref; } ;
struct TYPE_23__ {int mappedBufferFmt; int mappedResource; int registeredResource; int version; } ;
struct TYPE_24__ {TYPE_10__ in_map; scalar_t__ mapped; int regptr; } ;
typedef TYPE_2__ NvencSurface ;
typedef TYPE_3__ NvencDynLoadFunctions ;
typedef TYPE_4__ NvencContext ;
typedef TYPE_5__ NV_ENC_LOCK_INPUT_BUFFER ;
typedef TYPE_6__ NV_ENCODE_API_FUNCTION_LIST ;
typedef int NVENCSTATUS ;
typedef TYPE_7__ AVFrame ;
typedef TYPE_8__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_CUDA ;
 scalar_t__ AV_PIX_FMT_D3D11 ;
 int NV_ENC_LOCK_INPUT_BUFFER_VER ;
 int NV_ENC_MAP_INPUT_RESOURCE_VER ;
 int NV_ENC_SUCCESS ;
 int av_frame_ref (int ,TYPE_7__ const*) ;
 int av_frame_unref (int ) ;
 int av_log (TYPE_8__*,int ,char*) ;
 int nvenc_copy_frame (TYPE_8__*,TYPE_2__*,TYPE_5__*,TYPE_7__ const*) ;
 int nvenc_print_error (TYPE_8__*,int ,char*) ;
 int nvenc_register_frame (TYPE_8__*,TYPE_7__ const*) ;
 int stub1 (int ,TYPE_10__*) ;
 int stub2 (int ,TYPE_5__*) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static int nvenc_upload_frame(AVCodecContext *avctx, const AVFrame *frame,
                                      NvencSurface *nvenc_frame)
{
    NvencContext *ctx = avctx->priv_data;
    NvencDynLoadFunctions *dl_fn = &ctx->nvenc_dload_funcs;
    NV_ENCODE_API_FUNCTION_LIST *p_nvenc = &dl_fn->nvenc_funcs;

    int res;
    NVENCSTATUS nv_status;

    if (avctx->pix_fmt == AV_PIX_FMT_CUDA || avctx->pix_fmt == AV_PIX_FMT_D3D11) {
        int reg_idx = nvenc_register_frame(avctx, frame);
        if (reg_idx < 0) {
            av_log(avctx, AV_LOG_ERROR, "Could not register an input HW frame\n");
            return reg_idx;
        }

        res = av_frame_ref(nvenc_frame->in_ref, frame);
        if (res < 0)
            return res;

        if (!ctx->registered_frames[reg_idx].mapped) {
            ctx->registered_frames[reg_idx].in_map.version = NV_ENC_MAP_INPUT_RESOURCE_VER;
            ctx->registered_frames[reg_idx].in_map.registeredResource = ctx->registered_frames[reg_idx].regptr;
            nv_status = p_nvenc->nvEncMapInputResource(ctx->nvencoder, &ctx->registered_frames[reg_idx].in_map);
            if (nv_status != NV_ENC_SUCCESS) {
                av_frame_unref(nvenc_frame->in_ref);
                return nvenc_print_error(avctx, nv_status, "Error mapping an input resource");
            }
        }

        ctx->registered_frames[reg_idx].mapped += 1;

        nvenc_frame->reg_idx = reg_idx;
        nvenc_frame->input_surface = ctx->registered_frames[reg_idx].in_map.mappedResource;
        nvenc_frame->format = ctx->registered_frames[reg_idx].in_map.mappedBufferFmt;
        nvenc_frame->pitch = frame->linesize[0];

        return 0;
    } else {
        NV_ENC_LOCK_INPUT_BUFFER lockBufferParams = { 0 };

        lockBufferParams.version = NV_ENC_LOCK_INPUT_BUFFER_VER;
        lockBufferParams.inputBuffer = nvenc_frame->input_surface;

        nv_status = p_nvenc->nvEncLockInputBuffer(ctx->nvencoder, &lockBufferParams);
        if (nv_status != NV_ENC_SUCCESS) {
            return nvenc_print_error(avctx, nv_status, "Failed locking nvenc input buffer");
        }

        nvenc_frame->pitch = lockBufferParams.pitch;
        res = nvenc_copy_frame(avctx, nvenc_frame, &lockBufferParams, frame);

        nv_status = p_nvenc->nvEncUnlockInputBuffer(ctx->nvencoder, nvenc_frame->input_surface);
        if (nv_status != NV_ENC_SUCCESS) {
            return nvenc_print_error(avctx, nv_status, "Failed unlocking input buffer!");
        }

        return res;
    }
}
