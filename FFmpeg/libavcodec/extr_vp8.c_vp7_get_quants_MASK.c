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
struct TYPE_5__ {TYPE_1__* qmat; int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ VP8Context ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_4__ {void** chroma_qmul; int /*<<< orphan*/ * luma_dc_qmul; void** luma_qmul; } ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/ * vp7_y2ac_qlookup ; 
 int /*<<< orphan*/ * vp7_y2dc_qlookup ; 
 void** vp7_yac_qlookup ; 
 void** vp7_ydc_qlookup ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;

    int yac_qi  = FUNC2(c, 7);
    int ydc_qi  = FUNC1(c) ? FUNC2(c, 7) : yac_qi;
    int y2dc_qi = FUNC1(c) ? FUNC2(c, 7) : yac_qi;
    int y2ac_qi = FUNC1(c) ? FUNC2(c, 7) : yac_qi;
    int uvdc_qi = FUNC1(c) ? FUNC2(c, 7) : yac_qi;
    int uvac_qi = FUNC1(c) ? FUNC2(c, 7) : yac_qi;

    s->qmat[0].luma_qmul[0]    =       vp7_ydc_qlookup[ydc_qi];
    s->qmat[0].luma_qmul[1]    =       vp7_yac_qlookup[yac_qi];
    s->qmat[0].luma_dc_qmul[0] =       vp7_y2dc_qlookup[y2dc_qi];
    s->qmat[0].luma_dc_qmul[1] =       vp7_y2ac_qlookup[y2ac_qi];
    s->qmat[0].chroma_qmul[0]  = FUNC0(vp7_ydc_qlookup[uvdc_qi], 132);
    s->qmat[0].chroma_qmul[1]  =       vp7_yac_qlookup[uvac_qi];
}