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
struct TYPE_3__ {int /*<<< orphan*/  deemphasis; int /*<<< orphan*/  postfilter; } ;
typedef  TYPE_1__ OpusDSP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
    OpusDSP ctx;
    FUNC1(&ctx);

    if (FUNC0(ctx.postfilter, "postfilter_15"))
        FUNC4(15);
    FUNC2("postfilter_15");

    if (FUNC0(ctx.postfilter, "postfilter_512"))
        FUNC4(512);
    FUNC2("postfilter_512");

    if (FUNC0(ctx.postfilter, "postfilter_1022"))
        FUNC4(1022);
    FUNC2("postfilter_1022");

    if (FUNC0(ctx.deemphasis, "deemphasis"))
        FUNC3();
    FUNC2("deemphasis");
}