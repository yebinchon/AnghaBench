#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  properties; } ;
struct TYPE_7__ {int nreslevels; scalar_t__ nreslevels2decode; int log2_cblk_width; int log2_cblk_height; int cblk_style; int transform; int csty; int* log2_prec_widths; int* log2_prec_heights; } ;
struct TYPE_6__ {scalar_t__ reduction_factor; TYPE_5__* avctx; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;
typedef  TYPE_2__ Jpeg2000CodingStyle ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AV_CODEC_FLAG_BITEXACT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FF_CODEC_PROPERTY_LOSSLESS ; 
 int FF_DWT53 ; 
 int FF_DWT97 ; 
 int FF_DWT97_INT ; 
 int JPEG2000_CBLK_BYPASS ; 
 int JPEG2000_CSTY_PREC ; 
 scalar_t__ JPEG2000_MAX_RESLEVELS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 

__attribute__((used)) static int FUNC6(Jpeg2000DecoderContext *s, Jpeg2000CodingStyle *c)
{
    uint8_t byte;

    if (FUNC3(&s->g) < 5) {
        FUNC1(s->avctx, AV_LOG_ERROR, "Insufficient space for COX\n");
        return AVERROR_INVALIDDATA;
    }

    /*  nreslevels = number of resolution levels
                   = number of decomposition level +1 */
    c->nreslevels = FUNC4(&s->g) + 1;
    if (c->nreslevels >= JPEG2000_MAX_RESLEVELS) {
        FUNC1(s->avctx, AV_LOG_ERROR, "nreslevels %d is invalid\n", c->nreslevels);
        return AVERROR_INVALIDDATA;
    }

    if (c->nreslevels <= s->reduction_factor) {
        /* we are forced to update reduction_factor as its requested value is
           not compatible with this bitstream, and as we might have used it
           already in setup earlier we have to fail this frame until
           reinitialization is implemented */
        FUNC1(s->avctx, AV_LOG_ERROR, "reduction_factor too large for this bitstream, max is %d\n", c->nreslevels - 1);
        s->reduction_factor = c->nreslevels - 1;
        return FUNC0(EINVAL);
    }

    /* compute number of resolution levels to decode */
    c->nreslevels2decode = c->nreslevels - s->reduction_factor;

    c->log2_cblk_width  = (FUNC4(&s->g) & 15) + 2; // cblk width
    c->log2_cblk_height = (FUNC4(&s->g) & 15) + 2; // cblk height

    if (c->log2_cblk_width > 10 || c->log2_cblk_height > 10 ||
        c->log2_cblk_width + c->log2_cblk_height > 12) {
        FUNC1(s->avctx, AV_LOG_ERROR, "cblk size invalid\n");
        return AVERROR_INVALIDDATA;
    }

    c->cblk_style = FUNC4(&s->g);
    if (c->cblk_style != 0) { // cblk style
        FUNC1(s->avctx, AV_LOG_WARNING, "extra cblk styles %X\n", c->cblk_style);
        if (c->cblk_style & JPEG2000_CBLK_BYPASS)
            FUNC1(s->avctx, AV_LOG_WARNING, "Selective arithmetic coding bypass\n");
    }
    c->transform = FUNC4(&s->g); // DWT transformation type
    /* set integer 9/7 DWT in case of BITEXACT flag */
    if ((s->avctx->flags & AV_CODEC_FLAG_BITEXACT) && (c->transform == FF_DWT97))
        c->transform = FF_DWT97_INT;
    else if (c->transform == FF_DWT53) {
        s->avctx->properties |= FF_CODEC_PROPERTY_LOSSLESS;
    }

    if (c->csty & JPEG2000_CSTY_PREC) {
        int i;
        for (i = 0; i < c->nreslevels; i++) {
            byte = FUNC2(&s->g);
            c->log2_prec_widths[i]  =  byte       & 0x0F;    // precinct PPx
            c->log2_prec_heights[i] = (byte >> 4) & 0x0F;    // precinct PPy
            if (i)
                if (c->log2_prec_widths[i] == 0 || c->log2_prec_heights[i] == 0) {
                    FUNC1(s->avctx, AV_LOG_ERROR, "PPx %d PPy %d invalid\n",
                           c->log2_prec_widths[i], c->log2_prec_heights[i]);
                    c->log2_prec_widths[i] = c->log2_prec_heights[i] = 1;
                    return AVERROR_INVALIDDATA;
                }
        }
    } else {
        FUNC5(c->log2_prec_widths , 15, sizeof(c->log2_prec_widths ));
        FUNC5(c->log2_prec_heights, 15, sizeof(c->log2_prec_heights));
    }
    return 0;
}