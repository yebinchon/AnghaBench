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
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static inline int FUNC2(uint8_t *dst, int v)
{
    dst[0] = FUNC1(v - FUNC0(v - 255, 4), v);
    dst[1] = (v - dst[0]) >> 2;
    return 1 + (v >= 252);
}