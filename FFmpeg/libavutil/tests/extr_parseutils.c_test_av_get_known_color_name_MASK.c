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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int const**) ; 
 int /*<<< orphan*/  color_table ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    int i;
    const uint8_t *rgba;
    const char *color;

    for (i = 0; i < FUNC0(color_table); ++i) {
        color = FUNC1(i, &rgba);
        if (color)
            FUNC2("%s -> R(%d) G(%d) B(%d) A(%d)\n",
                    color, rgba[0], rgba[1], rgba[2], rgba[3]);
        else
            FUNC2("Color ID: %d not found\n", i);
    }
}