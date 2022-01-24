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
struct TYPE_5__ {TYPE_1__* prob; int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ VP8Context ;
typedef  int /*<<< orphan*/  VP56RangeCoder ;
struct TYPE_4__ {int /*<<< orphan*/ ** mvc; void** pred8x8c; void** pred16x16; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** vp8_mv_update_prob ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(VP8Context *s,
                                                            int mvc_size)
{
    VP56RangeCoder *c = &s->c;
    int i, j;

    if (FUNC1(c))
        for (i = 0; i < 4; i++)
            s->prob->pred16x16[i] = FUNC3(c, 8);
    if (FUNC1(c))
        for (i = 0; i < 3; i++)
            s->prob->pred8x8c[i]  = FUNC3(c, 8);

    // 17.2 MV probability update
    for (i = 0; i < 2; i++)
        for (j = 0; j < mvc_size; j++)
            if (FUNC0(c, vp8_mv_update_prob[i][j]))
                s->prob->mvc[i][j] = FUNC2(c);
}