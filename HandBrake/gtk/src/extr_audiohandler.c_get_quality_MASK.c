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
typedef  float gdouble ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float*,float*,float*,int*) ; 

__attribute__((used)) static gdouble FUNC1(int codec, gdouble quality)
{
    float low, high, gran;
    int dir;
    FUNC0(codec, &low, &high, &gran, &dir);
    if (dir)
    {
        // Quality values are inverted
        quality = high - quality + low;
    }
    return quality;
}