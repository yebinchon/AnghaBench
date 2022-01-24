#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mode; } ;
typedef  TYPE_1__ FFEBUR128State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FF_EBUR128_MODE_I ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int,double*) ; 
 double FUNC2 (double) ; 

int FUNC3(FFEBUR128State * st, double *out)
{
    double relative_threshold;

    if ((st->mode & FF_EBUR128_MODE_I) != FF_EBUR128_MODE_I)
        return FUNC0(EINVAL);

    if (!FUNC1(&st, 1, &relative_threshold)) {
        *out = -70.0;
        return 0;
    }

    *out = FUNC2(relative_threshold);
    return 0;
}