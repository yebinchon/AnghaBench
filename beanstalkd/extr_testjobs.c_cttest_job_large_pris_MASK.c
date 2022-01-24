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
typedef  int /*<<< orphan*/  Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  default_tube ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5()
{
    Job *a, *b;

    FUNC0(default_tube, FUNC4("default"));
    a = FUNC3(1, 0, 1, 0, default_tube);
    b = FUNC3(-5, 0, 1, 0, default_tube);

    FUNC1(FUNC2(a, b), "should be less");

    a = FUNC3(-5, 0, 1, 0, default_tube);
    b = FUNC3(1, 0, 1, 0, default_tube);

    FUNC1(!FUNC2(a, b), "should not be less");
}