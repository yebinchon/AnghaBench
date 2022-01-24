#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LLVidDSPContext ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 () ; 

void FUNC9(void)
{
    LLVidDSPContext c;
    int width = 16 * FUNC0(FUNC8(), 16, 128);
    int accRnd = FUNC8() & 0xFF;

    FUNC6(&c);

    FUNC1(c, width);
    FUNC7("add_bytes");

    FUNC5(c, width);
    FUNC7("add_median_pred");

    FUNC3(c, width, 0, "add_left_pred_zero");
    FUNC7("add_left_pred_zero");

    FUNC3(c, width, accRnd, "add_left_pred_rnd_acc");
    FUNC7("add_left_pred_rnd_acc");

    FUNC4(c, 255, width, accRnd, "add_left_pred_int16");
    FUNC7("add_left_pred_int16");

    FUNC2(c, width);
    FUNC7("add_gradient_pred");
}