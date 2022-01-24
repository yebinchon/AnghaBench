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
 int fb_height ; 
 int fb_width ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned char *buffer)
{
    static unsigned x_offset;

    unsigned char *line_start = (unsigned char *) buffer;
    unsigned width = fb_width > 32 ? 32 : fb_width;
    int i = 0;
    size_t stride = fb_width  << 2;

    x_offset = (x_offset + 1) % (fb_width - width);
    for (i = 0; i < fb_height; i++) {
        FUNC0(line_start + (x_offset << 2), ~0, width << 2);
        line_start += stride;
    }
}