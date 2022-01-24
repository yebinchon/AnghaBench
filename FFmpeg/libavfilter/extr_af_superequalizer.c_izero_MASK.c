#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float* fact; } ;
typedef  TYPE_1__ SuperEqualizerContext ;

/* Variables and functions */
 int M ; 
 float FUNC0 (float,int) ; 

__attribute__((used)) static float FUNC1(SuperEqualizerContext *s, float x)
{
    float ret = 1;
    int m;

    for (m = 1; m <= M; m++) {
        float t;

        t = FUNC0(x / 2, m) / s->fact[m];
        ret += t*t;
    }

    return ret;
}