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
 float FUNC0 (float) ; 
 float FUNC1 (float,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (float) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static inline float FUNC5(float y, float clip, float mu)
{
    y = FUNC1(y / clip, -1, 1);
    return clip * FUNC0(y) * (FUNC2(FUNC4(1 + mu) * FUNC3(y)) - 1) / mu;
}