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
struct TYPE_3__ {int /*<<< orphan*/  prefs; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gint ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,float*,float*,float*,int*) ; 

void
FUNC3(
    signal_user_data_t *ud,
    float *min,
    float *max,
    float *step,
    float *page,
    gint *digits,
    int *direction)
{
    float min_step;
    gint vcodec;
    vcodec = FUNC1(ud->settings, "VideoEncoder");

    *page = 10;
    *digits = 0;
    FUNC2(vcodec, min, max, &min_step, direction);
    *step = FUNC0(ud->prefs, "VideoQualityGranularity");

    if (*step < min_step)
        *step = min_step;

    if ((int)(*step * 100) % 10 != 0)
        *digits = 2;
    else if ((int)(*step * 10) % 10 != 0)
        *digits = 1;
}