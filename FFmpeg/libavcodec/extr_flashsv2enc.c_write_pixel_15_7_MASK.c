#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {unsigned int* colors; } ;
typedef  TYPE_1__ Palette ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int const*) ; 
 unsigned int FUNC2 (int const*) ; 
 int FUNC3 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC4(Palette * palette, uint8_t * dest, const uint8_t * src,
                            int dist)
{
    unsigned c15 = FUNC2(src);
    unsigned color = FUNC1(src);
    int d15 = FUNC0(color, color & 0x00f8f8f8);
    int c7 = FUNC3(palette, c15);
    int d7 = FUNC0(color, palette->colors[c7]);
    if (dist + d15 >= d7) {
        dest[0] = c7;
        return 1;
    } else {
        dest[0] = 0x80 | (c15 >> 8);
        dest[1] = c15 & 0xff;
        return 2;
    }
}