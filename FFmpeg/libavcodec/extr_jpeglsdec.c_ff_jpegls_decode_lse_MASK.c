#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {int debug; int bits_per_raw_sample; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_8__ {int maxval; int t1; int t2; int t3; int reset; int palette_index; TYPE_4__* avctx; int /*<<< orphan*/  gb; TYPE_1__* picture_ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/  format; scalar_t__* data; } ;
typedef  TYPE_2__ MJpegDecodeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY8 ; 
 int /*<<< orphan*/  AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (int,int) ; 
 int FF_DEBUG_PICT_INFO ; 
 int MAX_COMPONENTS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(MJpegDecodeContext *s)
{
    int id;
    int tid, wt, maxtab, i, j;

    int len = FUNC5(&s->gb, 16);
    id = FUNC5(&s->gb, 8);

    switch (id) {
    case 1:
        if (len < 13)
            return AVERROR_INVALIDDATA;

        s->maxval = FUNC5(&s->gb, 16);
        s->t1     = FUNC5(&s->gb, 16);
        s->t2     = FUNC5(&s->gb, 16);
        s->t3     = FUNC5(&s->gb, 16);
        s->reset  = FUNC5(&s->gb, 16);

        if(s->avctx->debug & FF_DEBUG_PICT_INFO) {
            FUNC2(s->avctx, AV_LOG_DEBUG, "Coding parameters maxval:%d T1:%d T2:%d T3:%d reset:%d\n",
                   s->maxval, s->t1, s->t2, s->t3, s->reset);
        }

//        ff_jpegls_reset_coding_parameters(s, 0);
        //FIXME quant table?
        break;
    case 2:
        s->palette_index = 0;
    case 3:
        tid= FUNC5(&s->gb, 8);
        wt = FUNC5(&s->gb, 8);

        if (len < 5)
            return AVERROR_INVALIDDATA;

        if (wt < 1 || wt > MAX_COMPONENTS) {
            FUNC3(s->avctx, "wt %d", wt);
            return AVERROR_PATCHWELCOME;
        }

        if (!s->maxval)
            maxtab = 255;
        else if ((5 + wt*(s->maxval+1)) < 65535)
            maxtab = s->maxval;
        else
            maxtab = 65530/wt - 1;

        if(s->avctx->debug & FF_DEBUG_PICT_INFO) {
            FUNC2(s->avctx, AV_LOG_DEBUG, "LSE palette %d tid:%d wt:%d maxtab:%d\n", id, tid, wt, maxtab);
        }
        if (maxtab >= 256) {
            FUNC3(s->avctx, ">8bit palette");
            return AVERROR_PATCHWELCOME;
        }
        maxtab = FUNC1(maxtab, (len - 5) / wt + s->palette_index);

        if (s->palette_index > maxtab)
            return AVERROR_INVALIDDATA;

        if ((s->avctx->pix_fmt == AV_PIX_FMT_GRAY8 || s->avctx->pix_fmt == AV_PIX_FMT_PAL8) &&
            (s->picture_ptr->format == AV_PIX_FMT_GRAY8 || s->picture_ptr->format == AV_PIX_FMT_PAL8)) {
            uint32_t *pal = (uint32_t *)s->picture_ptr->data[1];
            int shift = 0;

            if (s->avctx->bits_per_raw_sample > 0 && s->avctx->bits_per_raw_sample < 8) {
                maxtab = FUNC1(maxtab, (1<<s->avctx->bits_per_raw_sample)-1);
                shift = 8 - s->avctx->bits_per_raw_sample;
            }

            s->picture_ptr->format =
            s->avctx->pix_fmt = AV_PIX_FMT_PAL8;
            for (i=s->palette_index; i<=maxtab; i++) {
                uint8_t k = i << shift;
                pal[k] = 0;
                for (j=0; j<wt; j++) {
                    pal[k] |= FUNC5(&s->gb, 8) << (8*(wt-j-1));
                }
            }
            s->palette_index = i;
        }
        break;
    case 4:
        FUNC3(s->avctx, "oversize image");
        return FUNC0(ENOSYS);
    default:
        FUNC2(s->avctx, AV_LOG_ERROR, "invalid id %d\n", id);
        return AVERROR_INVALIDDATA;
    }
    FUNC4(s->avctx, "ID=%i, T=%i,%i,%i\n", id, s->t1, s->t2, s->t3);

    return 0;
}