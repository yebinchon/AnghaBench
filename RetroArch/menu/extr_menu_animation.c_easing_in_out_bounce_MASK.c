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
 double FUNC0 (float,int /*<<< orphan*/ ,float,float) ; 
 double FUNC1 (float,int /*<<< orphan*/ ,float,float) ; 

__attribute__((used)) static float FUNC2(float t, float b, float c, float d)
{
   if (t < d / 2)
      return FUNC0(t * 2, 0, c, d) * 0.5 + b;
   return FUNC1(t * 2 - d, 0, c, d) * 0.5 + c * .5 + b;
}