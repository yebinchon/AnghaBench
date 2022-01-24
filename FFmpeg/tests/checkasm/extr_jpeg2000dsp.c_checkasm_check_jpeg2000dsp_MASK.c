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
struct TYPE_3__ {int /*<<< orphan*/ * mct_decode; } ;
typedef  TYPE_1__ Jpeg2000DSPContext ;

/* Variables and functions */
 size_t FF_DWT53 ; 
 size_t FF_DWT97 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
    Jpeg2000DSPContext h;

    FUNC3(&h);

    if (FUNC0(h.mct_decode[FF_DWT53], "jpeg2000_rct_int"))
        FUNC2();
    if (FUNC0(h.mct_decode[FF_DWT97], "jpeg2000_ict_float"))
        FUNC1();

    FUNC4("mct_decode");
}