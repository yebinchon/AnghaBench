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
struct TYPE_3__ {int /*<<< orphan*/  predictor; int /*<<< orphan*/  reorder_pixels; } ;
typedef  TYPE_1__ ExrDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
    ExrDSPContext h;

    FUNC3(&h);

    if (FUNC0(h.reorder_pixels, "reorder_pixels"))
        FUNC2();

    FUNC4("reorder_pixels");

    if (FUNC0(h.predictor, "predictor"))
        FUNC1();

    FUNC4("predictor");
}