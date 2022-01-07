
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VTEncodeInfoFlags ;
struct TYPE_7__ {scalar_t__ async_error; } ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_8__ {int flags; int extradata; TYPE_1__* priv_data; } ;
typedef scalar_t__ OSStatus ;
typedef int ExtraSEI ;
typedef scalar_t__ CMSampleBufferRef ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AV_CODEC_FLAG_GLOBAL_HEADER ;
 int AV_LOG_ERROR ;
 int CFRelease (scalar_t__) ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int set_async_error (TYPE_1__*,int) ;
 int set_extradata (TYPE_2__*,scalar_t__) ;
 int vtenc_q_push (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static void vtenc_output_callback(
    void *ctx,
    void *sourceFrameCtx,
    OSStatus status,
    VTEncodeInfoFlags flags,
    CMSampleBufferRef sample_buffer)
{
    AVCodecContext *avctx = ctx;
    VTEncContext *vtctx = avctx->priv_data;
    ExtraSEI *sei = sourceFrameCtx;

    if (vtctx->async_error) {
        if(sample_buffer) CFRelease(sample_buffer);
        return;
    }

    if (status) {
        av_log(avctx, AV_LOG_ERROR, "Error encoding frame: %d\n", (int)status);
        set_async_error(vtctx, AVERROR_EXTERNAL);
        return;
    }

    if (!sample_buffer) {
        return;
    }

    if (!avctx->extradata && (avctx->flags & AV_CODEC_FLAG_GLOBAL_HEADER)) {
        int set_status = set_extradata(avctx, sample_buffer);
        if (set_status) {
            set_async_error(vtctx, set_status);
            return;
        }
    }

    vtenc_q_push(vtctx, sample_buffer, sei);
}
