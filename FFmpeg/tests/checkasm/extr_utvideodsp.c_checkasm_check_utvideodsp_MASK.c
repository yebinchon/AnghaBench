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
struct TYPE_3__ {int /*<<< orphan*/  restore_rgb_planes10; int /*<<< orphan*/  restore_rgb_planes; } ;
typedef  TYPE_1__ UTVideoDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
    UTVideoDSPContext h;

    FUNC3(&h);

    if (FUNC0(h.restore_rgb_planes, "restore_rgb_planes"))
        FUNC1();

    FUNC4("restore_rgb_planes");

    if (FUNC0(h.restore_rgb_planes10, "restore_rgb_planes10"))
        FUNC2();

    FUNC4("restore_rgb_planes10");
}