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
struct TYPE_3__ {int /*<<< orphan*/  unsigned_rung; int /*<<< orphan*/  els_ctx; } ;
typedef  TYPE_1__ ePICContext ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int,int) ; 

__attribute__((used)) static inline int FUNC3(ePICContext *dc,
                                             int N, int W, int NW)
{
    unsigned delta = FUNC1(&dc->els_ctx, &dc->unsigned_rung);
    return FUNC2(N, N + W - NW, W) - FUNC0(delta);
}