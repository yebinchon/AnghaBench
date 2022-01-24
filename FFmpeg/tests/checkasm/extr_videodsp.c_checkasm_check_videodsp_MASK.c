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
struct TYPE_3__ {int /*<<< orphan*/  emulated_edge_mc; } ;
typedef  TYPE_1__ VideoDSPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  uint8_t ; 

void FUNC4(void)
{
    VideoDSPContext vdsp;

    FUNC2(&vdsp, 8);
    if (FUNC1(vdsp.emulated_edge_mc, "emulated_edge_mc_8"))
        FUNC0(uint8_t);

    FUNC3("emulated_edge_mc");
}