
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* get_param_set_func ) (int ,int ,int *,int *,int *,int*) ;} ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef int CMVideoFormatDescriptionRef ;
typedef int CMSampleBufferRef ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int CMSampleBufferGetFormatDescription (int ) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int stub1 (int ,int ,int *,int *,int *,int*) ;

__attribute__((used)) static int get_length_code_size(
    AVCodecContext *avctx,
    CMSampleBufferRef sample_buffer,
    size_t *size)
{
    VTEncContext *vtctx = avctx->priv_data;
    CMVideoFormatDescriptionRef vid_fmt;
    int isize;
    int status;

    vid_fmt = CMSampleBufferGetFormatDescription(sample_buffer);
    if (!vid_fmt) {
        av_log(avctx, AV_LOG_ERROR, "Error getting buffer format description.\n");
        return AVERROR_EXTERNAL;
    }

    status = vtctx->get_param_set_func(vid_fmt,
                                       0,
                                       ((void*)0),
                                       ((void*)0),
                                       ((void*)0),
                                       &isize);
    if (status) {
        av_log(avctx, AV_LOG_ERROR, "Error getting length code size: %d\n", status);
        return AVERROR_EXTERNAL;
    }

    *size = isize;
    return 0;
}
