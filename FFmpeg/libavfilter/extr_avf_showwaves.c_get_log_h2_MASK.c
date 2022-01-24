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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT16_MAX ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(int16_t sample, int height)
{
    return FUNC1(1 + FUNC0(sample)) * height / FUNC1(1 + INT16_MAX);
}