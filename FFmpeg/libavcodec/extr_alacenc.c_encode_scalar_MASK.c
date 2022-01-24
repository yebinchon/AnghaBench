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
struct TYPE_4__ {int /*<<< orphan*/  k_modifier; } ;
struct TYPE_5__ {int /*<<< orphan*/  pbctx; TYPE_1__ rc; } ;
typedef  TYPE_2__ AlacEncodeContext ;

/* Variables and functions */
 int ALAC_ESCAPE_CODE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC2(AlacEncodeContext *s, int x,
                          int k, int write_sample_size)
{
    int divisor, q, r;

    k = FUNC0(k, s->rc.k_modifier);
    divisor = (1<<k) - 1;
    q = x / divisor;
    r = x % divisor;

    if (q > 8) {
        // write escape code and sample value directly
        FUNC1(&s->pbctx, 9, ALAC_ESCAPE_CODE);
        FUNC1(&s->pbctx, write_sample_size, x);
    } else {
        if (q)
            FUNC1(&s->pbctx, q, (1<<q) - 1);
        FUNC1(&s->pbctx, 1, 0);

        if (k != 1) {
            if (r > 0)
                FUNC1(&s->pbctx, k, r+1);
            else
                FUNC1(&s->pbctx, k-1, 0);
        }
    }
}