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
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static inline int16_t FUNC2(int16_t x)
{
    x = (FUNC0(x, x) + 4096) >> 13;
    x = (32767-x) + FUNC1(x, (-7651 + FUNC1(x, (8277 + FUNC1(-626, x)))));
    return x + 1;
}