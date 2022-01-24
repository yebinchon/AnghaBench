#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int q_ceil; } ;
typedef  TYPE_1__ VC2EncContext ;
struct TYPE_5__ {int bits_ceil; int bits_floor; int quant_idx; int /*<<< orphan*/  bytes; TYPE_1__* ctx; } ;
typedef  TYPE_2__ SliceArgs ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int,int,int) ; 
 int FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, void *arg)
{
    SliceArgs *slice_dat = arg;
    VC2EncContext *s = slice_dat->ctx;
    const int top = slice_dat->bits_ceil;
    const int bottom = slice_dat->bits_floor;
    int quant_buf[2] = {-1, -1};
    int quant = slice_dat->quant_idx, step = 1;
    int bits_last, bits = FUNC3(slice_dat, quant);
    while ((bits > top) || (bits < bottom)) {
        const int signed_step = bits > top ? +step : -step;
        quant  = FUNC2(quant + signed_step, 0, s->q_ceil-1);
        bits   = FUNC3(slice_dat, quant);
        if (quant_buf[1] == quant) {
            quant = FUNC0(quant_buf[0], quant);
            bits  = quant == quant_buf[0] ? bits_last : bits;
            break;
        }
        step         = FUNC2(step/2, 1, (s->q_ceil-1)/2);
        quant_buf[1] = quant_buf[0];
        quant_buf[0] = quant;
        bits_last    = bits;
    }
    slice_dat->quant_idx = FUNC2(quant, 0, s->q_ceil-1);
    slice_dat->bytes = FUNC1(bits >> 3);
    return 0;
}