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
struct TYPE_3__ {int number; int /*<<< orphan*/  closeable; } ;
typedef  TYPE_1__ Slot ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  counter ; 
 double FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,double) ; 

__attribute__((used)) static void FUNC4(GLFWwindow* window)
{
    Slot* slot = FUNC1(window);
    FUNC3("%08x to %i at %0.3f: Window close\n",
           counter++, slot->number, FUNC0());

    FUNC2(window, slot->closeable);
}