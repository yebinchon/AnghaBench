#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  search_for_ms; int /*<<< orphan*/  search_for_quantizers; int /*<<< orphan*/  encode_window_bands_info; int /*<<< orphan*/  quantize_and_encode_band; } ;
struct TYPE_5__ {int coder; } ;
struct TYPE_6__ {TYPE_1__ options; TYPE_3__* coder; } ;
typedef  TYPE_2__ AACEncContext ;
typedef  TYPE_3__ AACCoefficientsEncoder ;

/* Variables and functions */
 int /*<<< orphan*/  codebook_trellis_rate ; 
 int /*<<< orphan*/  quantize_and_encode_band_mips ; 
 int /*<<< orphan*/  search_for_ms_mips ; 
 int /*<<< orphan*/  search_for_quantizers_twoloop ; 

void FUNC0(AACEncContext *c) {
#if HAVE_INLINE_ASM
#if !HAVE_MIPS32R6 && !HAVE_MIPS64R6
    AACCoefficientsEncoder *e = c->coder;
    int option = c->options.coder;

    if (option == 2) {
        e->quantize_and_encode_band = quantize_and_encode_band_mips;
        e->encode_window_bands_info = codebook_trellis_rate;
#if HAVE_MIPSFPU
        e->search_for_quantizers    = search_for_quantizers_twoloop;
#endif /* HAVE_MIPSFPU */
    }
#if HAVE_MIPSFPU
    e->search_for_ms            = search_for_ms_mips;
#endif /* HAVE_MIPSFPU */
#endif /* !HAVE_MIPS32R6 && !HAVE_MIPS64R6 */
#endif /* HAVE_INLINE_ASM */
}