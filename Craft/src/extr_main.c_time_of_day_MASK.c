#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float day_length; } ;

/* Variables and functions */
 TYPE_1__* g ; 
 float FUNC0 () ; 

float FUNC1() {
    if (g->day_length <= 0) {
        return 0.5;
    }
    float t;
    t = FUNC0();
    t = t / g->day_length;
    t = t - (int)t;
    return t;
}