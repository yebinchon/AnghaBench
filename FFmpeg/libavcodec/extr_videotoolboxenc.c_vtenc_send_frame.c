
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int session; scalar_t__ a53_cc; } ;
typedef TYPE_2__ VTEncContext ;
struct TYPE_20__ {int num; int den; } ;
struct TYPE_25__ {TYPE_1__ time_base; } ;
struct TYPE_24__ {int pts; } ;
struct TYPE_23__ {scalar_t__ size; } ;
struct TYPE_22__ {int size; int data; } ;
typedef TYPE_3__ ExtraSEI ;
typedef int * CVPixelBufferRef ;
typedef int CMTime ;
typedef int * CFDictionaryRef ;
typedef TYPE_4__ AVFrameSideData ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AV_FRAME_DATA_A53_CC ;
 int AV_LOG_ERROR ;
 int CFRelease (int *) ;
 int CMTimeMake (int,int ) ;
 int VTCompressionSessionEncodeFrame (int ,int *,int ,int ,int *,TYPE_3__*,int *) ;
 TYPE_4__* av_frame_get_side_data (TYPE_5__ const*,int ) ;
 int av_free (TYPE_3__*) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 TYPE_3__* av_mallocz (int) ;
 int create_cv_pixel_buffer (TYPE_6__*,TYPE_5__ const*,int **) ;
 int create_encoder_dict_h264 (TYPE_5__ const*,int **) ;
 int ff_alloc_a53_sei (TYPE_5__ const*,int ,int *,int *) ;
 int kCMTimeInvalid ;

__attribute__((used)) static int vtenc_send_frame(AVCodecContext *avctx,
                            VTEncContext *vtctx,
                            const AVFrame *frame)
{
    CMTime time;
    CFDictionaryRef frame_dict;
    CVPixelBufferRef cv_img = ((void*)0);
    AVFrameSideData *side_data = ((void*)0);
    ExtraSEI *sei = ((void*)0);
    int status = create_cv_pixel_buffer(avctx, frame, &cv_img);

    if (status) return status;

    status = create_encoder_dict_h264(frame, &frame_dict);
    if (status) {
        CFRelease(cv_img);
        return status;
    }

    side_data = av_frame_get_side_data(frame, AV_FRAME_DATA_A53_CC);
    if (vtctx->a53_cc && side_data && side_data->size) {
        sei = av_mallocz(sizeof(*sei));
        if (!sei) {
            av_log(avctx, AV_LOG_ERROR, "Not enough memory for closed captions, skipping\n");
        } else {
            int ret = ff_alloc_a53_sei(frame, 0, &sei->data, &sei->size);
            if (ret < 0) {
                av_log(avctx, AV_LOG_ERROR, "Not enough memory for closed captions, skipping\n");
                av_free(sei);
                sei = ((void*)0);
            }
        }
    }

    time = CMTimeMake(frame->pts * avctx->time_base.num, avctx->time_base.den);
    status = VTCompressionSessionEncodeFrame(
        vtctx->session,
        cv_img,
        time,
        kCMTimeInvalid,
        frame_dict,
        sei,
        ((void*)0)
    );

    if (frame_dict) CFRelease(frame_dict);
    CFRelease(cv_img);

    if (status) {
        av_log(avctx, AV_LOG_ERROR, "Error: cannot encode frame: %d\n", status);
        return AVERROR_EXTERNAL;
    }

    return 0;
}
