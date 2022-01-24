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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  mp_rgb_yuv_table ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int FUNC4(void)
{
    FUNC0();

    FUNC2();

    FUNC1("static const YuvPixel mp_rgb_yuv_table[1 << 15] = {\n");
    FUNC3(mp_rgb_yuv_table, 1 << 15, 3);
    FUNC1("};\n");

    return 0;
}