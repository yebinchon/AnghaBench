
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int VTContext ;
struct TYPE_7__ {TYPE_2__* priv_data; TYPE_1__* internal; } ;
struct TYPE_6__ {int is_avc; } ;
struct TYPE_5__ {int * hwaccel_priv_data; } ;
typedef TYPE_2__ H264Context ;
typedef TYPE_3__ AVCodecContext ;


 int videotoolbox_buffer_copy (int *,int const*,int ) ;

int ff_videotoolbox_h264_start_frame(AVCodecContext *avctx,
                                     const uint8_t *buffer,
                                     uint32_t size)
{
    VTContext *vtctx = avctx->internal->hwaccel_priv_data;
    H264Context *h = avctx->priv_data;

    if (h->is_avc == 1) {
        return videotoolbox_buffer_copy(vtctx, buffer, size);
    }

    return 0;
}
