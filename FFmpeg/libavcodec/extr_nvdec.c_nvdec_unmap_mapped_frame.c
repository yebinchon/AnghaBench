
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_3__* cudl; int decoder; TYPE_2__* cvdl; int cuda_ctx; TYPE_1__* hw_device_ref; } ;
struct TYPE_11__ {TYPE_7__* decoder_ref; TYPE_7__* idx_ref; } ;
struct TYPE_10__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_9__ {int (* cuvidUnmapVideoFrame ) (int ,int ) ;} ;
struct TYPE_8__ {void* data; } ;
typedef TYPE_4__ NVDECFrame ;
typedef TYPE_5__ NVDECDecoder ;
typedef int CUdeviceptr ;
typedef int CUcontext ;


 int CHECK_CU (int ) ;
 int av_buffer_unref (TYPE_7__**) ;
 int av_free (TYPE_4__*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int *) ;

__attribute__((used)) static void nvdec_unmap_mapped_frame(void *opaque, uint8_t *data)
{
    NVDECFrame *unmap_data = (NVDECFrame*)data;
    NVDECDecoder *decoder = (NVDECDecoder*)unmap_data->decoder_ref->data;
    void *logctx = decoder->hw_device_ref->data;
    CUdeviceptr devptr = (CUdeviceptr)opaque;
    int ret;
    CUcontext dummy;

    ret = CHECK_CU(decoder->cudl->cuCtxPushCurrent(decoder->cuda_ctx));
    if (ret < 0)
        goto finish;

    CHECK_CU(decoder->cvdl->cuvidUnmapVideoFrame(decoder->decoder, devptr));

    CHECK_CU(decoder->cudl->cuCtxPopCurrent(&dummy));

finish:
    av_buffer_unref(&unmap_data->idx_ref);
    av_buffer_unref(&unmap_data->decoder_ref);
    av_free(unmap_data);
}
