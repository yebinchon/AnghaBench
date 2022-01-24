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
struct TYPE_4__ {int* dc; } ;
struct TYPE_5__ {int ref; TYPE_1__ u; } ;
typedef  TYPE_2__ DiracBlock ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(DiracBlock *block, int stride, int x, int y)
{
    int i, n = 0;

    FUNC1(block->u.dc, 0, sizeof(block->u.dc));

    if (x && !(block[-1].ref & 3)) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] += block[-1].u.dc[i];
        n++;
    }

    if (y && !(block[-stride].ref & 3)) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] += block[-stride].u.dc[i];
        n++;
    }

    if (x && y && !(block[-1-stride].ref & 3)) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] += block[-1-stride].u.dc[i];
        n++;
    }

    if (n == 2) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] = (block->u.dc[i]+1)>>1;
    } else if (n == 3) {
        for (i = 0; i < 3; i++)
            block->u.dc[i] = FUNC0(block->u.dc[i]);
    }
}