
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* priv_data; } ;
struct TYPE_13__ {int (* nvEncGetEncodeCaps ) (int ,int ,TYPE_4__*,int*) ;} ;
struct TYPE_12__ {int capsToQuery; int version; int member_0; } ;
struct TYPE_9__ {int encodeGUID; } ;
struct TYPE_10__ {TYPE_5__ nvenc_funcs; } ;
struct TYPE_11__ {TYPE_1__ init_encode_params; int nvencoder; TYPE_2__ nvenc_dload_funcs; } ;
typedef TYPE_3__ NvencContext ;
typedef TYPE_4__ NV_ENC_CAPS_PARAM ;
typedef int NV_ENC_CAPS ;
typedef TYPE_5__ NV_ENCODE_API_FUNCTION_LIST ;
typedef TYPE_6__ AVCodecContext ;


 int NV_ENC_CAPS_PARAM_VER ;
 int NV_ENC_SUCCESS ;
 int stub1 (int ,int ,TYPE_4__*,int*) ;

__attribute__((used)) static int nvenc_check_cap(AVCodecContext *avctx, NV_ENC_CAPS cap)
{
    NvencContext *ctx = avctx->priv_data;
    NV_ENCODE_API_FUNCTION_LIST *p_nvenc = &ctx->nvenc_dload_funcs.nvenc_funcs;
    NV_ENC_CAPS_PARAM params = { 0 };
    int ret, val = 0;

    params.version = NV_ENC_CAPS_PARAM_VER;
    params.capsToQuery = cap;

    ret = p_nvenc->nvEncGetEncodeCaps(ctx->nvencoder, ctx->init_encode_params.encodeGUID, &params, &val);

    if (ret == NV_ENC_SUCCESS)
        return val;
    return 0;
}
