#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  bits_per_raw_sample; int /*<<< orphan*/  dct_algo; int /*<<< orphan*/  idct_algo; } ;
struct TYPE_9__ {int /*<<< orphan*/  bits_per_sample; int /*<<< orphan*/  dct_algo; int /*<<< orphan*/  idct_algo; } ;
typedef  int /*<<< orphan*/  PixblockDSPContext ;
typedef  int /*<<< orphan*/  IDCTDSPContext ;
typedef  int /*<<< orphan*/  FDCTDSPContext ;
typedef  TYPE_1__ AVDCT ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  fdct ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  get_pixels ; 
 int /*<<< orphan*/  idct ; 
 int /*<<< orphan*/  idct_permutation ; 

int FUNC7(AVDCT *dsp)
{
    AVCodecContext *avctx = FUNC2(NULL);

    if (!avctx)
        return FUNC0(ENOMEM);

    avctx->idct_algo = dsp->idct_algo;
    avctx->dct_algo  = dsp->dct_algo;
    avctx->bits_per_raw_sample = dsp->bits_per_sample;

#define COPY(src, name) memcpy(&dsp->name, &src.name, sizeof(dsp->name))

#if CONFIG_IDCTDSP
    {
        IDCTDSPContext idsp;
        ff_idctdsp_init(&idsp, avctx);
        COPY(idsp, idct);
        COPY(idsp, idct_permutation);
    }
#endif

#if CONFIG_FDCTDSP
    {
        FDCTDSPContext fdsp;
        ff_fdctdsp_init(&fdsp, avctx);
        COPY(fdsp, fdct);
    }
#endif

#if CONFIG_PIXBLOCKDSP
    {
        PixblockDSPContext pdsp;
        ff_pixblockdsp_init(&pdsp, avctx);
        COPY(pdsp, get_pixels);
    }
#endif

    FUNC3(&avctx);

    return 0;
}