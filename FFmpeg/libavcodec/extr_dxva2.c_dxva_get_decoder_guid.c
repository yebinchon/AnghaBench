
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * guid; } ;
typedef TYPE_1__ dxva_mode ;
struct TYPE_7__ {scalar_t__ pix_fmt; int workaround; } ;
typedef int GUID ;
typedef TYPE_2__ FFDXVASharedContext ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_VERBOSE ;
 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_2__* DXVA_SHARED_CONTEXT (int *) ;
 int EINVAL ;
 int FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO ;
 scalar_t__ IsEqualGUID (int *,int const*) ;
 int av_log (int *,int ,char*) ;
 int d3d11va_validate_output (void*,int ,void*) ;
 int dxva2_validate_output (void*,int ,void*) ;
 int dxva_check_codec_compatibility (int *,TYPE_1__ const*) ;
 int dxva_list_guids_debug (int *,void*,unsigned int,int const*) ;
 TYPE_1__* dxva_modes ;
 int const ff_DXVADDI_Intel_ModeH264_E ;
 int const ff_GUID_NULL ;

__attribute__((used)) static int dxva_get_decoder_guid(AVCodecContext *avctx, void *service, void *surface_format,
                                 unsigned guid_count, const GUID *guid_list, GUID *decoder_guid)
{
    FFDXVASharedContext *sctx = DXVA_SHARED_CONTEXT(avctx);
    unsigned i, j;

    dxva_list_guids_debug(avctx, service, guid_count, guid_list);

    *decoder_guid = ff_GUID_NULL;
    for (i = 0; dxva_modes[i].guid; i++) {
        const dxva_mode *mode = &dxva_modes[i];
        int validate;
        if (!dxva_check_codec_compatibility(avctx, mode))
            continue;

        for (j = 0; j < guid_count; j++) {
            if (IsEqualGUID(mode->guid, &guid_list[j]))
                break;
        }
        if (j == guid_count)
            continue;
        if (validate) {
            *decoder_guid = *mode->guid;
            break;
        }
    }

    if (IsEqualGUID(decoder_guid, &ff_GUID_NULL)) {
        av_log(avctx, AV_LOG_VERBOSE, "No decoder device for codec found\n");
        return AVERROR(EINVAL);
    }

    if (IsEqualGUID(decoder_guid, &ff_DXVADDI_Intel_ModeH264_E))
        sctx->workaround |= FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO;

    return 0;
}
