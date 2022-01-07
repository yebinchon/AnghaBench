
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {void* data; } ;
struct TYPE_8__ {int (* cuvidDestroyDecoder ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_3__* cvdl; TYPE_5__* hw_device_ref; TYPE_1__* cudl; scalar_t__ decoder; int cuda_ctx; } ;
struct TYPE_6__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
typedef TYPE_2__ NVDECDecoder ;
typedef int CUcontext ;


 int CHECK_CU (int ) ;
 int av_buffer_unref (TYPE_5__**) ;
 int av_freep (TYPE_2__**) ;
 int cuvid_free_functions (TYPE_3__**) ;
 int stub1 (int ) ;
 int stub2 (scalar_t__) ;
 int stub3 (int *) ;

__attribute__((used)) static void nvdec_decoder_free(void *opaque, uint8_t *data)
{
    NVDECDecoder *decoder = (NVDECDecoder*)data;

    if (decoder->decoder) {
        void *logctx = decoder->hw_device_ref->data;
        CUcontext dummy;
        CHECK_CU(decoder->cudl->cuCtxPushCurrent(decoder->cuda_ctx));
        CHECK_CU(decoder->cvdl->cuvidDestroyDecoder(decoder->decoder));
        CHECK_CU(decoder->cudl->cuCtxPopCurrent(&dummy));
    }

    av_buffer_unref(&decoder->hw_device_ref);

    cuvid_free_functions(&decoder->cvdl);

    av_freep(&decoder);
}
