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

/* Variables and functions */
 int /*<<< orphan*/ * REGS ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int nints, int nfloats) {
    SAVE;
    FUNC0(nints <= 6);
    FUNC0(nfloats <= 8);
    for (int i = 0; i < nints; i++)
        FUNC1(REGS[i]);
    for (int i = 1; i < nfloats; i++)
        FUNC2(i);
}