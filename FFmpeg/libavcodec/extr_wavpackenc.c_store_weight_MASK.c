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
typedef  int int8_t ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 

__attribute__((used)) static int8_t FUNC1(int weight)
{
    weight = FUNC0(weight, -1024, 1024);
    if (weight > 0)
        weight -= (weight + 64) >> 7;

    return (weight + 4) >> 3;
}