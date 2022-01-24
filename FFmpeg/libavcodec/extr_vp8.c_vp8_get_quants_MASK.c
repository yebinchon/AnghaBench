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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int yac_qi; int ydc_delta; int y2dc_delta; int y2ac_delta; int uvdc_delta; int uvac_delta; } ;
struct TYPE_6__ {int* base_quant; int /*<<< orphan*/  absolute_vals; scalar_t__ enabled; } ;
struct TYPE_9__ {TYPE_3__* qmat; TYPE_2__ quant; TYPE_1__ segmentation; int /*<<< orphan*/  c; } ;
typedef  TYPE_4__ VP8Context ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_8__ {int* luma_qmul; int* luma_dc_qmul; int* chroma_qmul; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 size_t FUNC2 (int,int) ; 
 int* vp8_ac_qlookup ; 
 int* vp8_dc_qlookup ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;
    int i, base_qi;

    s->quant.yac_qi     = FUNC4(c, 7);
    s->quant.ydc_delta  = FUNC3(c, 4);
    s->quant.y2dc_delta = FUNC3(c, 4);
    s->quant.y2ac_delta = FUNC3(c, 4);
    s->quant.uvdc_delta = FUNC3(c, 4);
    s->quant.uvac_delta = FUNC3(c, 4);

    for (i = 0; i < 4; i++) {
        if (s->segmentation.enabled) {
            base_qi = s->segmentation.base_quant[i];
            if (!s->segmentation.absolute_vals)
                base_qi += s->quant.yac_qi;
        } else
            base_qi = s->quant.yac_qi;

        s->qmat[i].luma_qmul[0]    = vp8_dc_qlookup[FUNC2(base_qi + s->quant.ydc_delta,  7)];
        s->qmat[i].luma_qmul[1]    = vp8_ac_qlookup[FUNC2(base_qi,              7)];
        s->qmat[i].luma_dc_qmul[0] = vp8_dc_qlookup[FUNC2(base_qi + s->quant.y2dc_delta, 7)] * 2;
        /* 101581>>16 is equivalent to 155/100 */
        s->qmat[i].luma_dc_qmul[1] = vp8_ac_qlookup[FUNC2(base_qi + s->quant.y2ac_delta, 7)] * 101581 >> 16;
        s->qmat[i].chroma_qmul[0]  = vp8_dc_qlookup[FUNC2(base_qi + s->quant.uvdc_delta, 7)];
        s->qmat[i].chroma_qmul[1]  = vp8_ac_qlookup[FUNC2(base_qi + s->quant.uvac_delta, 7)];

        s->qmat[i].luma_dc_qmul[1] = FUNC0(s->qmat[i].luma_dc_qmul[1], 8);
        s->qmat[i].chroma_qmul[0]  = FUNC1(s->qmat[i].chroma_qmul[0], 132);
    }
}