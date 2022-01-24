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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(uint8_t x, uint8_t y, uint8_t z)
{
    return ((FUNC0(x - y) + FUNC0 (z - y)) / 2) - FUNC0(z - x) > 4; // make 4 configurable?
}