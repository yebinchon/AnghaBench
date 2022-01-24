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
 int FUNC0 (float,int) ; 

__attribute__((used)) static float FUNC1(float t, float b, float c, float d)
{
   t = t / d * 2;
   if (t < 1)
      return c / 2 * FUNC0(t, 4) + b;
   return -c / 2 * (FUNC0(t - 2, 4) - 2) + b;
}