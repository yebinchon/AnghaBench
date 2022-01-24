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
 int /*<<< orphan*/  counter ; 
 char* FUNC0 (unsigned int) ; 
 char* FUNC1 (int) ; 
 double FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,double,unsigned int,char*,char*) ; 

__attribute__((used)) static void FUNC5(GLFWwindow* window, unsigned int codepoint, int mods)
{
    Slot* slot = FUNC3(window);
    FUNC4("%08x to %i at %0.3f: Character 0x%08x (%s) with modifiers (with%s) input\n",
            counter++, slot->number, FUNC2(), codepoint,
            FUNC0(codepoint),
            FUNC1(mods));
}