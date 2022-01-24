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
struct TYPE_5__ {size_t audio_data_frames; } ;
typedef  TYPE_2__ FFEBUR128State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t,double*) ; 

__attribute__((used)) static int FUNC2(FFEBUR128State * st,
                                      size_t interval_frames, double *out)
{
    if (interval_frames > st->d->audio_data_frames) {
        return FUNC0(EINVAL);
    }
    FUNC1(st, interval_frames, out);
    return 0;
}