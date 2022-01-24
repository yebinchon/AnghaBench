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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linear_to_alaw ; 
 int /*<<< orphan*/  linear_to_ulaw ; 
 int /*<<< orphan*/  linear_to_vidc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  uint8_t ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(void)
{
    FUNC1();
    FUNC2();
    FUNC3();

    FUNC4();

    FUNC0("static const", uint8_t, linear_to_alaw);
    FUNC0("static const", uint8_t, linear_to_ulaw);
    FUNC0("static const", uint8_t, linear_to_vidc);

    return 0;
}