
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dshow_ctx {int audio_buffer_size; } ;
struct TYPE_9__ {int nAvgBytesPerSec; } ;
typedef TYPE_1__ WAVEFORMATEX ;
struct TYPE_12__ {int member_0; int member_1; int member_2; int member_3; int cbBuffer; } ;
struct TYPE_11__ {struct TYPE_11__* pbFormat; int formattype; } ;
struct TYPE_10__ {struct dshow_ctx* priv_data; } ;
typedef int IPin ;
typedef int IAMStreamConfig ;
typedef int IAMBufferNegotiation ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AM_MEDIA_TYPE ;
typedef TYPE_4__ ALLOCATOR_PROPERTIES ;


 int AVERROR (int ) ;
 int CoTaskMemFree (TYPE_3__*) ;
 int EIO ;
 int FORMAT_WaveFormatEx ;
 int IAMBufferNegotiation_Release (int *) ;
 scalar_t__ IAMBufferNegotiation_SuggestAllocatorProperties (int *,TYPE_4__*) ;
 scalar_t__ IAMStreamConfig_GetFormat (int *,TYPE_3__**) ;
 int IAMStreamConfig_Release (int *) ;
 int IID_IAMBufferNegotiation ;
 int IID_IAMStreamConfig ;
 scalar_t__ IPin_QueryInterface (int *,int *,void**) ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;

__attribute__((used)) static int
dshow_set_audio_buffer_size(AVFormatContext *avctx, IPin *pin)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IAMBufferNegotiation *buffer_negotiation = ((void*)0);
    ALLOCATOR_PROPERTIES props = { -1, -1, -1, -1 };
    IAMStreamConfig *config = ((void*)0);
    AM_MEDIA_TYPE *type = ((void*)0);
    int ret = AVERROR(EIO);

    if (IPin_QueryInterface(pin, &IID_IAMStreamConfig, (void **) &config) != S_OK)
        goto end;
    if (IAMStreamConfig_GetFormat(config, &type) != S_OK)
        goto end;
    if (!IsEqualGUID(&type->formattype, &FORMAT_WaveFormatEx))
        goto end;

    props.cbBuffer = (((WAVEFORMATEX *) type->pbFormat)->nAvgBytesPerSec)
                   * ctx->audio_buffer_size / 1000;

    if (IPin_QueryInterface(pin, &IID_IAMBufferNegotiation, (void **) &buffer_negotiation) != S_OK)
        goto end;
    if (IAMBufferNegotiation_SuggestAllocatorProperties(buffer_negotiation, &props) != S_OK)
        goto end;

    ret = 0;

end:
    if (buffer_negotiation)
        IAMBufferNegotiation_Release(buffer_negotiation);
    if (type) {
        if (type->pbFormat)
            CoTaskMemFree(type->pbFormat);
        CoTaskMemFree(type);
    }
    if (config)
        IAMStreamConfig_Release(config);

    return ret;
}
