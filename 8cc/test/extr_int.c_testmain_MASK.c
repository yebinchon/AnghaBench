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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,short) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3() {
    FUNC2("long");

    short a = 10;
    short int b = 15;
    FUNC1(25, a + b);
    FUNC1(20, a + 10);

    long x = 67;
    long int y = 69;
    FUNC0(67, x);
    FUNC0(136, x + y);
    FUNC0(10L, 10L);
    FUNC0(4294967295L, 4294967295);
    FUNC0(1152921504606846976, 1152921504606846976);
    FUNC0(1152921504606846977, 1152921504606846976 + 1);
}