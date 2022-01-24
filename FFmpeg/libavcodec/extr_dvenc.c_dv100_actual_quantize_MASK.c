#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* area_q; int cno; int* bit_size; int* mb; int* next; int /*<<< orphan*/ * save; } ;
typedef  TYPE_1__ EncBlockInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dv100_qlevels ; 
 int* dv100_qstep_inv ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(EncBlockInfo *b, int qlevel)
{
    int prev, k, qsinv;

    int qno = FUNC1(dv100_qlevels[qlevel]);
    int cno = FUNC0(dv100_qlevels[qlevel]);

    if (b->area_q[0] == qno && b->cno == cno)
        return b->bit_size[0];

    qsinv = dv100_qstep_inv[qno];

    /* record the new qstep */
    b->area_q[0] = qno;
    b->cno = cno;

    /* reset encoded size (EOB = 4 bits) */
    b->bit_size[0] = 4;

    /* visit nonzero components and quantize */
    prev = 0;
    for (k = 1; k < 64; k++) {
        /* quantize */
        int ac = FUNC2(b->save[k], qsinv) >> cno;
        if (ac) {
            if (ac > 255)
                ac = 255;
            b->mb[k] = ac;
            b->bit_size[0] += FUNC3(k - prev - 1, ac);
            b->next[prev] = k;
            prev = k;
        }
    }
    b->next[prev] = k;

    return b->bit_size[0];
}