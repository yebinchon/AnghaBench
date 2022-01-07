
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {TYPE_1__* pVtbl; } ;
struct TYPE_11__ {int max_b_frames; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int debug; TYPE_4__* factory; int trace; int version; int * library; scalar_t__ dts_delay; int timestamp_list; int delayed_frame; } ;
struct TYPE_9__ {scalar_t__ (* GetTrace ) (TYPE_4__*,int *) ;scalar_t__ (* GetDebug ) (TYPE_4__*,int *) ;} ;
typedef TYPE_2__ AmfContext ;
typedef TYPE_3__ AVCodecContext ;
typedef scalar_t__ AMF_RESULT ;
typedef scalar_t__ (* AMFQueryVersion_Fn ) (int *) ;
typedef scalar_t__ (* AMFInit_Fn ) (int ,TYPE_4__**) ;


 scalar_t__ AMF_DLL_NAMEA ;
 int AMF_FULL_VERSION ;
 int AMF_INIT_FUNCTION_NAME ;
 scalar_t__ AMF_OK ;
 int AMF_QUERY_VERSION_FUNCTION_NAME ;
 int AMF_RETURN_IF_FALSE (TYPE_2__*,int,int ,char*,scalar_t__,...) ;
 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int ENOMEM ;
 int RTLD_LOCAL ;
 int RTLD_NOW ;
 int av_fifo_alloc (int) ;
 int av_frame_alloc () ;
 int * dlopen (scalar_t__,int) ;
 scalar_t__ dlsym (int *,int ) ;
 scalar_t__ stub1 (TYPE_4__*,int *) ;
 scalar_t__ stub2 (TYPE_4__*,int *) ;

__attribute__((used)) static int amf_load_library(AVCodecContext *avctx)
{
    AmfContext *ctx = avctx->priv_data;
    AMFInit_Fn init_fun;
    AMFQueryVersion_Fn version_fun;
    AMF_RESULT res;

    ctx->delayed_frame = av_frame_alloc();
    if (!ctx->delayed_frame) {
        return AVERROR(ENOMEM);
    }

    ctx->timestamp_list = av_fifo_alloc((avctx->max_b_frames + 16) * sizeof(int64_t));
    if (!ctx->timestamp_list) {
        return AVERROR(ENOMEM);
    }
    ctx->dts_delay = 0;


    ctx->library = dlopen(AMF_DLL_NAMEA, RTLD_NOW | RTLD_LOCAL);
    AMF_RETURN_IF_FALSE(ctx, ctx->library != ((void*)0),
        AVERROR_UNKNOWN, "DLL %s failed to open\n", AMF_DLL_NAMEA);

    init_fun = (AMFInit_Fn)dlsym(ctx->library, AMF_INIT_FUNCTION_NAME);
    AMF_RETURN_IF_FALSE(ctx, init_fun != ((void*)0), AVERROR_UNKNOWN, "DLL %s failed to find function %s\n", AMF_DLL_NAMEA, AMF_INIT_FUNCTION_NAME);

    version_fun = (AMFQueryVersion_Fn)dlsym(ctx->library, AMF_QUERY_VERSION_FUNCTION_NAME);
    AMF_RETURN_IF_FALSE(ctx, version_fun != ((void*)0), AVERROR_UNKNOWN, "DLL %s failed to find function %s\n", AMF_DLL_NAMEA, AMF_QUERY_VERSION_FUNCTION_NAME);

    res = version_fun(&ctx->version);
    AMF_RETURN_IF_FALSE(ctx, res == AMF_OK, AVERROR_UNKNOWN, "%s failed with error %d\n", AMF_QUERY_VERSION_FUNCTION_NAME, res);
    res = init_fun(AMF_FULL_VERSION, &ctx->factory);
    AMF_RETURN_IF_FALSE(ctx, res == AMF_OK, AVERROR_UNKNOWN, "%s failed with error %d\n", AMF_INIT_FUNCTION_NAME, res);
    res = ctx->factory->pVtbl->GetTrace(ctx->factory, &ctx->trace);
    AMF_RETURN_IF_FALSE(ctx, res == AMF_OK, AVERROR_UNKNOWN, "GetTrace() failed with error %d\n", res);
    res = ctx->factory->pVtbl->GetDebug(ctx->factory, &ctx->debug);
    AMF_RETURN_IF_FALSE(ctx, res == AMF_OK, AVERROR_UNKNOWN, "GetDebug() failed with error %d\n", res);
    return 0;
}
