#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nb_d3d11_views; scalar_t__ dxva2_service; scalar_t__* d3d11_views; int /*<<< orphan*/  decoder_ref; } ;
typedef  TYPE_1__ FFDXVASharedContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__**) ; 

int FUNC5(AVCodecContext *avctx)
{
    FFDXVASharedContext *sctx = FUNC0(avctx);
    int i;

    FUNC3(&sctx->decoder_ref);

#if CONFIG_D3D11VA
    for (i = 0; i < sctx->nb_d3d11_views; i++) {
        if (sctx->d3d11_views[i])
            ID3D11VideoDecoderOutputView_Release(sctx->d3d11_views[i]);
    }
    av_freep(&sctx->d3d11_views);
#endif

#if CONFIG_DXVA2
    if (sctx->dxva2_service)
        IDirectXVideoDecoderService_Release(sctx->dxva2_service);
#endif

    return 0;
}