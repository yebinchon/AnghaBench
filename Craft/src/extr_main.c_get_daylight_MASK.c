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
 int FUNC0 (int,float) ; 
 float FUNC1 () ; 

float FUNC2() {
    float timer = FUNC1();
    if (timer < 0.5) {
        float t = (timer - 0.25) * 100;
        return 1 / (1 + FUNC0(2, -t));
    }
    else {
        float t = (timer - 0.85) * 100;
        return 1 - 1 / (1 + FUNC0(2, -t));
    }
}