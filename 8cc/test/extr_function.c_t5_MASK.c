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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

__attribute__((used)) static void FUNC2() {
    int a[] = {1, 2, 3};
    int *p = a;
    *p = 99; p = p + 1;
    *p = 98; p = p + 1;
    *p = 97;
    FUNC0(a);
    FUNC1(a);
}