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
typedef  int int64_t ;

/* Variables and functions */
 int MY_PI ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static int64_t FUNC1(int64_t a)
{
    if (a < 0)
        a = MY_PI - a;  // 0..inf
    a %= 2 * MY_PI;     // 0..2PI

    if (a >= MY_PI * 3 / 2)
        a -= 2 * MY_PI; // -PI / 2 .. 3PI / 2
    if (a >= MY_PI / 2)
        a = MY_PI - a;  // -PI / 2 ..  PI / 2

    return a - FUNC0(a, 3) / 6 + FUNC0(a, 5) / 120 - FUNC0(a, 7) / 5040;
}