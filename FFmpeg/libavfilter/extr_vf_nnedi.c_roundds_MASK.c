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
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (double const) ; 
 double const FUNC3 (double const) ; 

__attribute__((used)) static int FUNC4(const double f)
{
    if (f - FUNC3(f) >= 0.5)
        return FUNC1((int)FUNC2(f), 32767);
    return FUNC0((int)FUNC3(f), -32768);
}