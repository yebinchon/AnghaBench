
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {int (* nvEncGetEncodeGUIDCount ) (int ,int*) ;int (* nvEncGetEncodeGUIDs ) (int ,int *,int,int*) ;} ;
struct TYPE_8__ {int encodeGUID; } ;
struct TYPE_7__ {TYPE_4__ nvenc_funcs; } ;
struct TYPE_9__ {TYPE_2__ init_encode_params; int nvencoder; TYPE_1__ nvenc_dload_funcs; } ;
typedef TYPE_3__ NvencContext ;
typedef TYPE_4__ NV_ENCODE_API_FUNCTION_LIST ;
typedef int GUID ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int ENOSYS ;
 int NV_ENC_SUCCESS ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 int memcmp (int *,int *,int) ;
 int stub1 (int ,int*) ;
 int stub2 (int ,int *,int,int*) ;

__attribute__((used)) static int nvenc_check_codec_support(AVCodecContext *avctx)
{
    NvencContext *ctx = avctx->priv_data;
    NV_ENCODE_API_FUNCTION_LIST *p_nvenc = &ctx->nvenc_dload_funcs.nvenc_funcs;
    int i, ret, count = 0;
    GUID *guids = ((void*)0);

    ret = p_nvenc->nvEncGetEncodeGUIDCount(ctx->nvencoder, &count);

    if (ret != NV_ENC_SUCCESS || !count)
        return AVERROR(ENOSYS);

    guids = av_malloc(count * sizeof(GUID));
    if (!guids)
        return AVERROR(ENOMEM);

    ret = p_nvenc->nvEncGetEncodeGUIDs(ctx->nvencoder, guids, count, &count);
    if (ret != NV_ENC_SUCCESS) {
        ret = AVERROR(ENOSYS);
        goto fail;
    }

    ret = AVERROR(ENOSYS);
    for (i = 0; i < count; i++) {
        if (!memcmp(&guids[i], &ctx->init_encode_params.encodeGUID, sizeof(*guids))) {
            ret = 0;
            break;
        }
    }

fail:
    av_free(guids);

    return ret;
}
