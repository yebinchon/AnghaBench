#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PixblockDSPContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

void FUNC2(PixblockDSPContext *c, AVCodecContext *avctx,
                              unsigned high_bit_depth)
{
#if HAVE_MMI
    pixblockdsp_init_mmi(c, avctx, high_bit_depth);
#endif /* HAVE_MMI */
#if HAVE_MSA
    pixblockdsp_init_msa(c, avctx, high_bit_depth);
#endif  // #if HAVE_MSA
}