
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ frame_ct_out; int * session; } ;
typedef TYPE_2__ VTEncContext ;
struct TYPE_8__ {int den; } ;
struct TYPE_10__ {scalar_t__ extradata_size; scalar_t__ extradata; TYPE_1__ time_base; TYPE_2__* priv_data; } ;
typedef int * CVPixelBufferRef ;
typedef int * CVPixelBufferPoolRef ;
typedef int CMVideoCodecType ;
typedef int CMTime ;
typedef int * CMSampleBufferRef ;
typedef int CFStringRef ;
typedef int CFNumberRef ;
typedef int CFDictionaryRef ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int CFRelease (int *) ;
 int CMTimeMake (int ,int ) ;
 int CVPixelBufferPoolCreatePixelBuffer (int *,int *,int **) ;
 int VTCompressionSessionCompleteFrames (int *,int ) ;
 int VTCompressionSessionEncodeFrame (int *,int *,int ,int ,int *,int *,int *) ;
 int * VTCompressionSessionGetPixelBufferPool (int *) ;
 int av_assert0 (int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int kCMTimeIndefinite ;
 int kCMTimeInvalid ;
 int kCVReturnSuccess ;
 int vtenc_create_encoder (TYPE_3__*,int ,int ,int ,int ,int ,int **) ;
 int vtenc_q_pop (TYPE_2__*,int ,int **,int *) ;

__attribute__((used)) static int vtenc_populate_extradata(AVCodecContext *avctx,
                                    CMVideoCodecType codec_type,
                                    CFStringRef profile_level,
                                    CFNumberRef gamma_level,
                                    CFDictionaryRef enc_info,
                                    CFDictionaryRef pixel_buffer_info)
{
    VTEncContext *vtctx = avctx->priv_data;
    int status;
    CVPixelBufferPoolRef pool = ((void*)0);
    CVPixelBufferRef pix_buf = ((void*)0);
    CMTime time;
    CMSampleBufferRef buf = ((void*)0);

    status = vtenc_create_encoder(avctx,
                                  codec_type,
                                  profile_level,
                                  gamma_level,
                                  enc_info,
                                  pixel_buffer_info,
                                  &vtctx->session);
    if (status)
        goto pe_cleanup;

    pool = VTCompressionSessionGetPixelBufferPool(vtctx->session);
    if(!pool){
        av_log(avctx, AV_LOG_ERROR, "Error getting pixel buffer pool.\n");
        goto pe_cleanup;
    }

    status = CVPixelBufferPoolCreatePixelBuffer(((void*)0),
                                                pool,
                                                &pix_buf);

    if(status != kCVReturnSuccess){
        av_log(avctx, AV_LOG_ERROR, "Error creating frame from pool: %d\n", status);
        goto pe_cleanup;
    }

    time = CMTimeMake(0, avctx->time_base.den);
    status = VTCompressionSessionEncodeFrame(vtctx->session,
                                             pix_buf,
                                             time,
                                             kCMTimeInvalid,
                                             ((void*)0),
                                             ((void*)0),
                                             ((void*)0));

    if (status) {
        av_log(avctx,
               AV_LOG_ERROR,
               "Error sending frame for extradata: %d\n",
               status);

        goto pe_cleanup;
    }


    status = VTCompressionSessionCompleteFrames(vtctx->session,
                                                kCMTimeIndefinite);

    if (status)
        goto pe_cleanup;

    status = vtenc_q_pop(vtctx, 0, &buf, ((void*)0));
    if (status) {
        av_log(avctx, AV_LOG_ERROR, "popping: %d\n", status);
        goto pe_cleanup;
    }

    CFRelease(buf);



pe_cleanup:
    if(vtctx->session)
        CFRelease(vtctx->session);

    vtctx->session = ((void*)0);
    vtctx->frame_ct_out = 0;

    av_assert0(status != 0 || (avctx->extradata && avctx->extradata_size > 0));

    return status;
}
