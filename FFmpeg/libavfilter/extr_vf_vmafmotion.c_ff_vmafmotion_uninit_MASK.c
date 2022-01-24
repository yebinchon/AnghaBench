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
struct TYPE_3__ {double nb_frames; double motion_sum; int /*<<< orphan*/  temp_data; int /*<<< orphan*/ * blur_data; } ;
typedef  TYPE_1__ VMAFMotionData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

double FUNC1(VMAFMotionData *s)
{
    FUNC0(s->blur_data[0]);
    FUNC0(s->blur_data[1]);
    FUNC0(s->temp_data);

    return s->nb_frames > 0 ? s->motion_sum / s->nb_frames : 0.0;
}