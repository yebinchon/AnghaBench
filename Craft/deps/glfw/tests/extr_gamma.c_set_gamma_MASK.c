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
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 double gamma_value ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (char*,double) ; 

__attribute__((used)) static void FUNC4(GLFWwindow* window, float value)
{
    GLFWmonitor* monitor = FUNC1(window);
    if (!monitor)
        monitor = FUNC0();

    gamma_value = value;
    FUNC3("Gamma: %f\n", gamma_value);
    FUNC2(monitor, gamma_value);
}