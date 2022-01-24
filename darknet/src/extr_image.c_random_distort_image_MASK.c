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
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,float,float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float,float) ; 

void FUNC3(image im, float hue, float saturation, float exposure)
{
    float dhue = FUNC2(-hue, hue);
    float dsat = FUNC1(saturation);
    float dexp = FUNC1(exposure);
    FUNC0(im, dhue, dsat, dexp);
}