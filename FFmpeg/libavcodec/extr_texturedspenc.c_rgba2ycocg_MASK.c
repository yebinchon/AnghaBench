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
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(uint8_t *dst, const uint8_t *pixel)
{
    int r =  pixel[0];
    int g = (pixel[1] + 1) >> 1;
    int b =  pixel[2];
    int t = (2 + r + b) >> 2;

    dst[0] = FUNC0(128 + ((r - b + 1) >> 1));   /* Co */
    dst[1] = FUNC0(128 + g - t);                /* Cg */
    dst[2] = 0;
    dst[3] = FUNC0(g + t);                      /* Y */
}