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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,double) ; 

__attribute__((used)) static void FUNC3(GLFWwindow* window)
{
    double base = FUNC1();
    FUNC0(window);
    FUNC2("Closing window took %0.3f seconds\n", FUNC1() - base);
}