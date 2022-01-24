#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ptrdiff_t ;
struct TYPE_14__ {int coded_height; int coded_width; TYPE_4__* priv_data; } ;
struct TYPE_13__ {int* linesize; int** data; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* add_bytes ) (int*,int*,int) ;int /*<<< orphan*/  (* add_median_pred ) (int*,int*,int*,int,int*,int*) ;int /*<<< orphan*/  (* add_left_pred ) (int*,int*,int,int) ;int /*<<< orphan*/  (* add_gradient_pred ) (int*,int,int) ;} ;
struct TYPE_12__ {int interlaced; int planes; int slice_height; TYPE_2__ llviddsp; scalar_t__ decorrelate; TYPE_1__* vlc; TYPE_3__** slices; scalar_t__ buf; int /*<<< orphan*/ * vshift; int /*<<< orphan*/ * hshift; TYPE_5__* p; } ;
struct TYPE_11__ {int /*<<< orphan*/  size; scalar_t__ start; } ;
struct TYPE_9__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_4__ MagicYUVContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
#define  GRADIENT 130 
#define  LEFT 129 
#define  MEDIAN 128 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int*,int*,int,int*,int*) ; 

__attribute__((used)) static int FUNC18(AVCodecContext *avctx, void *tdata,
                             int j, int threadnr)
{
    MagicYUVContext *s = avctx->priv_data;
    int interlaced = s->interlaced;
    AVFrame *p = s->p;
    int i, k, x, min_width;
    GetBitContext gb;
    uint8_t *dst;

    for (i = 0; i < s->planes; i++) {
        int left, lefttop, top;
        int height = FUNC0(FUNC1(s->slice_height, avctx->coded_height - j * s->slice_height), s->vshift[i]);
        int width = FUNC0(avctx->coded_width, s->hshift[i]);
        int sheight = FUNC0(s->slice_height, s->vshift[i]);
        ptrdiff_t fake_stride = p->linesize[i] * (1 + interlaced);
        ptrdiff_t stride = p->linesize[i];
        int flags, pred;
        int ret = FUNC6(&gb, s->buf + s->slices[i][j].start,
                                 s->slices[i][j].size);

        if (ret < 0)
            return ret;

        flags = FUNC3(&gb, 8);
        pred  = FUNC3(&gb, 8);

        dst = p->data[i] + j * sheight * stride;
        if (flags & 1) {
            if (FUNC4(&gb) < 8* width * height)
                return AVERROR_INVALIDDATA;
            for (k = 0; k < height; k++) {
                for (x = 0; x < width; x++)
                    dst[x] = FUNC3(&gb, 8);

                dst += stride;
            }
        } else {
            for (k = 0; k < height; k++) {
                for (x = 0; x < width; x++) {
                    int pix;
                    if (FUNC4(&gb) <= 0)
                        return AVERROR_INVALIDDATA;

                    pix = FUNC5(&gb, s->vlc[i].table, s->vlc[i].bits, 3);
                    if (pix < 0)
                        return AVERROR_INVALIDDATA;

                    dst[x] = 255 - pix;
                }
                dst += stride;
            }
        }

        switch (pred) {
        case LEFT:
            dst = p->data[i] + j * sheight * stride;
            s->llviddsp.add_left_pred(dst, dst, width, 0);
            dst += stride;
            if (interlaced) {
                s->llviddsp.add_left_pred(dst, dst, width, 0);
                dst += stride;
            }
            for (k = 1 + interlaced; k < height; k++) {
                s->llviddsp.add_left_pred(dst, dst, width, dst[-fake_stride]);
                dst += stride;
            }
            break;
        case GRADIENT:
            dst = p->data[i] + j * sheight * stride;
            s->llviddsp.add_left_pred(dst, dst, width, 0);
            dst += stride;
            if (interlaced) {
                s->llviddsp.add_left_pred(dst, dst, width, 0);
                dst += stride;
            }
            min_width = FUNC1(width, 32);
            for (k = 1 + interlaced; k < height; k++) {
                top = dst[-fake_stride];
                left = top + dst[0];
                dst[0] = left;
                for (x = 1; x < min_width; x++) { /* dsp need aligned 32 */
                    top = dst[x - fake_stride];
                    lefttop = dst[x - (fake_stride + 1)];
                    left += top - lefttop + dst[x];
                    dst[x] = left;
                }
                if (width > 32)
                    s->llviddsp.add_gradient_pred(dst + 32, fake_stride, width - 32);
                dst += stride;
            }
            break;
        case MEDIAN:
            dst = p->data[i] + j * sheight * stride;
            s->llviddsp.add_left_pred(dst, dst, width, 0);
            dst += stride;
            if (interlaced) {
                s->llviddsp.add_left_pred(dst, dst, width, 0);
                dst += stride;
            }
            lefttop = left = dst[0];
            for (k = 1 + interlaced; k < height; k++) {
                s->llviddsp.add_median_pred(dst, dst - fake_stride,
                                             dst, width, &left, &lefttop);
                lefttop = left = dst[0];
                dst += stride;
            }
            break;
        default:
            FUNC2(avctx, "Unknown prediction: %d", pred);
        }
    }

    if (s->decorrelate) {
        int height = FUNC1(s->slice_height, avctx->coded_height - j * s->slice_height);
        int width = avctx->coded_width;
        uint8_t *b = p->data[0] + j * s->slice_height * p->linesize[0];
        uint8_t *g = p->data[1] + j * s->slice_height * p->linesize[1];
        uint8_t *r = p->data[2] + j * s->slice_height * p->linesize[2];

        for (i = 0; i < height; i++) {
            s->llviddsp.add_bytes(b, g, width);
            s->llviddsp.add_bytes(r, g, width);
            b += p->linesize[0];
            g += p->linesize[1];
            r += p->linesize[2];
        }
    }

    return 0;
}