
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pix_fmt; } ;
struct TYPE_7__ {int * Data4; int Data3; int Data2; scalar_t__ Data1; } ;
typedef TYPE_1__ GUID ;
typedef TYPE_2__ FFDXVASharedContext ;
typedef int DXGI_FORMAT ;
typedef int D3DFORMAT ;
typedef int AVCodecContext ;


 int AV_LOG_VERBOSE ;
 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_2__* DXVA_SHARED_CONTEXT (int *) ;
 int FF_ARRAY_ELEMS (int const*) ;
 int const MKTAG (char,char,char,char) ;
 int av_log (int *,int ,char*,...) ;
 scalar_t__ d3d11va_validate_output (void*,TYPE_1__ const,int*) ;
 scalar_t__ dxva2_validate_output (void*,TYPE_1__ const,int const*) ;

__attribute__((used)) static void dxva_list_guids_debug(AVCodecContext *avctx, void *service,
                                 unsigned guid_count, const GUID *guid_list)
{
    FFDXVASharedContext *sctx = DXVA_SHARED_CONTEXT(avctx);
    int i;

    av_log(avctx, AV_LOG_VERBOSE, "Decoder GUIDs reported as supported:\n");

    for (i = 0; i < guid_count; i++) {
        const GUID *guid = &guid_list[i];

        av_log(avctx, AV_LOG_VERBOSE,
             "{%8.8x-%4.4x-%4.4x-%2.2x%2.2x-%2.2x%2.2x%2.2x%2.2x%2.2x%2.2x}",
             (unsigned) guid->Data1, guid->Data2, guid->Data3,
             guid->Data4[0], guid->Data4[1],
             guid->Data4[2], guid->Data4[3],
             guid->Data4[4], guid->Data4[5],
             guid->Data4[6], guid->Data4[7]);
        av_log(avctx, AV_LOG_VERBOSE, "\n");
    }
}
