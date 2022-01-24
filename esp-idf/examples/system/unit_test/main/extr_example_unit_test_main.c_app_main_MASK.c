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
typedef  int /*<<< orphan*/  numbers ;

/* Variables and functions */
 int* FUNC0 (int const,int) ; 
 int const FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int*,int const) ; 

void FUNC5(void)
{
    const int count = 32;
    const int max = 100;

    FUNC3("In main application. Collecting %d random numbers from 1 to %d:\n", count, max);
    int *numbers = FUNC0(count, sizeof(numbers[0]));
    for (int i = 0; i < count; ++i) {
        numbers[i] = 1 + FUNC1() % (max - 1);
        FUNC3("%4d ", numbers[i]);
        if ((i + 1) % 10 == 0) {
            FUNC3("\n");
        }
    }

    int mean = FUNC4(numbers, count);
    FUNC3("\nMean: %d\n", mean);
    FUNC2(numbers);
}