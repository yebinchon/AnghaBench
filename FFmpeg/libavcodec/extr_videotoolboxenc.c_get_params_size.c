
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int start_code ;
struct TYPE_5__ {int (* get_param_set_func ) (int ,size_t,int const**,size_t*,size_t*,int *) ;} ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef int CMVideoFormatDescriptionRef ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int stub1 (int ,size_t,int const**,size_t*,size_t*,int *) ;
 int stub2 (int ,size_t,int const**,size_t*,size_t*,int *) ;

__attribute__((used)) static int get_params_size(
    AVCodecContext *avctx,
    CMVideoFormatDescriptionRef vid_fmt,
    size_t *size)
{
    VTEncContext *vtctx = avctx->priv_data;
    size_t total_size = 0;
    size_t ps_count;
    int is_count_bad = 0;
    size_t i;
    int status;
    status = vtctx->get_param_set_func(vid_fmt,
                                       0,
                                       ((void*)0),
                                       ((void*)0),
                                       &ps_count,
                                       ((void*)0));
    if (status) {
        is_count_bad = 1;
        ps_count = 0;
        status = 0;
    }

    for (i = 0; i < ps_count || is_count_bad; i++) {
        const uint8_t *ps;
        size_t ps_size;
        status = vtctx->get_param_set_func(vid_fmt,
                                           i,
                                           &ps,
                                           &ps_size,
                                           ((void*)0),
                                           ((void*)0));
        if (status) {




            if (i > 0 && is_count_bad) status = 0;

            break;
        }

        total_size += ps_size + sizeof(start_code);
    }

    if (status) {
        av_log(avctx, AV_LOG_ERROR, "Error getting parameter set sizes: %d\n", status);
        return AVERROR_EXTERNAL;
    }

    *size = total_size;
    return 0;
}
