#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* d; } ;
struct TYPE_5__ {int samples_in_100ms; } ;
typedef  TYPE_2__ FFEBUR128State ;

/* Variables and functions */
 double HUGE_VAL ; 
 int FUNC0 (TYPE_2__*,int,double*) ; 
 double FUNC1 (double) ; 

int FUNC2(FFEBUR128State * st, double *out)
{
    double energy;
    int error = FUNC0(st, st->d->samples_in_100ms * 4,
                                           &energy);
    if (error) {
        return error;
    } else if (energy <= 0.0) {
        *out = -HUGE_VAL;
        return 0;
    }
    *out = FUNC1(energy);
    return 0;
}