#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hybrid_synthesis_deint; int /*<<< orphan*/  hybrid_analysis_ileave; int /*<<< orphan*/  hybrid_analysis; int /*<<< orphan*/  mul_pair_single; int /*<<< orphan*/  add_squares; } ;
typedef  TYPE_1__ PSDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(void)
{
    PSDSPContext psdsp;

    FUNC1(&psdsp);

    if (FUNC0(psdsp.add_squares, "ps_add_squares"))
        FUNC3();
    FUNC2("add_squares");

    if (FUNC0(psdsp.mul_pair_single, "ps_mul_pair_single"))
        FUNC7();
    FUNC2("mul_pair_single");

    if (FUNC0(psdsp.hybrid_analysis, "ps_hybrid_analysis"))
        FUNC4();
    FUNC2("hybrid_analysis");

    if (FUNC0(psdsp.hybrid_analysis_ileave, "ps_hybrid_analysis_ileave"))
        FUNC5();
    FUNC2("hybrid_analysis_ileave");

    if (FUNC0(psdsp.hybrid_synthesis_deint, "ps_hybrid_synthesis_deint"))
        FUNC6();
    FUNC2("hybrid_synthesis_deint");

    FUNC8(&psdsp);
    FUNC2("stereo_interpolate");
}