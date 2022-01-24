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
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_4__ {void*** vector_pdv; void*** vector_pdi; void** vector_sig; void** vector_dct; } ;
typedef  TYPE_1__ VP56Model ;
struct TYPE_5__ {TYPE_1__* modelp; int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ VP56Context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** vp5_vmc_pct ; 

__attribute__((used)) static void FUNC2(VP56Context *s)
{
    VP56RangeCoder *c = &s->c;
    VP56Model *model = s->modelp;
    int comp, node;

    for (comp=0; comp<2; comp++) {
        if (FUNC0(c, vp5_vmc_pct[comp][0]))
            model->vector_dct[comp] = FUNC1(c, 7);
        if (FUNC0(c, vp5_vmc_pct[comp][1]))
            model->vector_sig[comp] = FUNC1(c, 7);
        if (FUNC0(c, vp5_vmc_pct[comp][2]))
            model->vector_pdi[comp][0] = FUNC1(c, 7);
        if (FUNC0(c, vp5_vmc_pct[comp][3]))
            model->vector_pdi[comp][1] = FUNC1(c, 7);
    }

    for (comp=0; comp<2; comp++)
        for (node=0; node<7; node++)
            if (FUNC0(c, vp5_vmc_pct[comp][4 + node]))
                model->vector_pdv[comp][node] = FUNC1(c, 7);
}