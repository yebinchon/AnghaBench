#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * guid; } ;
typedef  TYPE_1__ dxva_mode ;
struct TYPE_7__ {scalar_t__ pix_fmt; int /*<<< orphan*/  workaround; } ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_2__ FFDXVASharedContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ AV_PIX_FMT_D3D11 ; 
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,unsigned int,int /*<<< orphan*/  const*) ; 
 TYPE_1__* dxva_modes ; 
 int /*<<< orphan*/  const ff_DXVADDI_Intel_ModeH264_E ; 
 int /*<<< orphan*/  const ff_GUID_NULL ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, void *service, void *surface_format,
                                 unsigned guid_count, const GUID *guid_list, GUID *decoder_guid)
{
    FFDXVASharedContext *sctx = FUNC1(avctx);
    unsigned i, j;

    FUNC7(avctx, service, guid_count, guid_list);

    *decoder_guid = ff_GUID_NULL;
    for (i = 0; dxva_modes[i].guid; i++) {
        const dxva_mode *mode = &dxva_modes[i];
        int validate;
        if (!FUNC6(avctx, mode))
            continue;

        for (j = 0; j < guid_count; j++) {
            if (FUNC2(mode->guid, &guid_list[j]))
                break;
        }
        if (j == guid_count)
            continue;

#if CONFIG_D3D11VA
        if (sctx->pix_fmt == AV_PIX_FMT_D3D11)
            validate = d3d11va_validate_output(service, *mode->guid, surface_format);
#endif
#if CONFIG_DXVA2
        if (sctx->pix_fmt == AV_PIX_FMT_DXVA2_VLD)
            validate = dxva2_validate_output(service, *mode->guid, surface_format);
#endif
        if (validate) {
            *decoder_guid = *mode->guid;
            break;
        }
    }

    if (FUNC2(decoder_guid, &ff_GUID_NULL)) {
        FUNC3(avctx, AV_LOG_VERBOSE, "No decoder device for codec found\n");
        return FUNC0(EINVAL);
    }

    if (FUNC2(decoder_guid, &ff_DXVADDI_Intel_ModeH264_E))
        sctx->workaround |= FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO;

    return 0;
}