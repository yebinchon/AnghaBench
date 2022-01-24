#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
struct TYPE_6__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
struct TYPE_7__ {size_t js_subband_start; int subbands; int js_vlc_bits; TYPE_1__ channel_coupling; } ;
typedef  TYPE_2__ COOKSubpacket ;
typedef  TYPE_3__ COOKContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int* cplband ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(COOKContext *q, COOKSubpacket *p, int *decouple_tab)
{
    int i;
    int vlc    = FUNC2(&q->gb);
    int start  = cplband[p->js_subband_start];
    int end    = cplband[p->subbands - 1];
    int length = end - start + 1;

    if (start > end)
        return 0;

    if (vlc)
        for (i = 0; i < length; i++)
            decouple_tab[start + i] = FUNC3(&q->gb,
                                               p->channel_coupling.table,
                                               p->channel_coupling.bits, 2);
    else
        for (i = 0; i < length; i++) {
            int v = FUNC1(&q->gb, p->js_vlc_bits);
            if (v == (1<<p->js_vlc_bits)-1) {
                FUNC0(q->avctx, AV_LOG_ERROR, "decouple value too large\n");
                return AVERROR_INVALIDDATA;
            }
            decouple_tab[start + i] = v;
        }
    return 0;
}