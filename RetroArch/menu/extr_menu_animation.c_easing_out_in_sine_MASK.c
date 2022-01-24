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
 float FUNC0 (float,float,float,float) ; 
 float FUNC1 (float,float,float,float) ; 

__attribute__((used)) static float FUNC2(float t, float b, float c, float d)
{
   if (t < d / 2)
      return FUNC1(t * 2, b, c / 2, d);
   return FUNC0((t * 2) -d, b + c / 2, c / 2, d);
}