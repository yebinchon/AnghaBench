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
struct TYPE_2__ {double* var_values; } ;
typedef  TYPE_1__ RotContext ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 size_t VAR_IN_H ; 
 size_t VAR_IN_W ; 
 float FUNC1 (double) ; 
 float FUNC2 (double) ; 

__attribute__((used)) static double FUNC3(void *opaque, double angle)
{
    RotContext *rot = opaque;
    double inw = rot->var_values[VAR_IN_W];
    double inh = rot->var_values[VAR_IN_H];
    float sinx = FUNC2(angle);
    float cosx = FUNC1(angle);

    return FUNC0(0, -inh * cosx) + FUNC0(0, -inw * sinx) +
           FUNC0(0,  inh * cosx) + FUNC0(0,  inw * sinx);
}