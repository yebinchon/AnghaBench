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
struct TYPE_3__ {int number; } ;
typedef  TYPE_1__ Slot ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  counter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,double) ; 

__attribute__((used)) static void FUNC6(GLFWwindow* window)
{
    Slot* slot = FUNC2(window);
    FUNC5("%08x to %i at %0.3f: Window refresh\n",
           counter++, slot->number, FUNC1());

    FUNC3(window);
    FUNC0(GL_COLOR_BUFFER_BIT);
    FUNC4(window);
}