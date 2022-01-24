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
struct TYPE_3__ {int block_type; int /*<<< orphan*/ * sb_hybrid; int /*<<< orphan*/  switch_point; } ;
typedef  int /*<<< orphan*/  MPADecodeContext ;
typedef  int /*<<< orphan*/  INTFLOAT ;
typedef  TYPE_1__ GranuleDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SBLIMIT ; 

__attribute__((used)) static void FUNC1(MPADecodeContext *s, GranuleDef *g)
{
    INTFLOAT *ptr;
    int n, i;

    /* we antialias only "long" bands */
    if (g->block_type == 2) {
        if (!g->switch_point)
            return;
        /* XXX: check this for 8000Hz case */
        n = 1;
    } else {
        n = SBLIMIT - 1;
    }

    ptr = g->sb_hybrid + 18;
    for (i = n; i > 0; i--) {
        FUNC0(0);
        FUNC0(1);
        FUNC0(2);
        FUNC0(3);
        FUNC0(4);
        FUNC0(5);
        FUNC0(6);
        FUNC0(7);

        ptr += 18;
    }
}