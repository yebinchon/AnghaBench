#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_10__ {int num; double den; } ;
struct TYPE_7__ {double den; scalar_t__ num; } ;
struct TYPE_8__ {int cfr; TYPE_4__ vrate; TYPE_1__ orig_vrate; } ;
typedef  TYPE_2__ hb_job_t ;
struct TYPE_9__ {scalar_t__ total_time; long long out_frame_count; } ;
typedef  TYPE_3__ hb_interjob_t ;

/* Variables and functions */
 double FUNC0 (double) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,double,int,double) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 

void FUNC5( hb_interjob_t * interjob, hb_job_t * job )
{
    if (interjob->total_time <= 0 || interjob->out_frame_count <= 0 ||
        job->cfr == 1)
    {
        // Invalid or uninitialized frame statistics
        // Or CFR output
        return;
    }

    // compute actual output vrate from first pass
    int64_t num, den;
    num = interjob->out_frame_count * 90000LL;
    den = interjob->total_time;
    FUNC1(&num, &den, num, den, INT_MAX);

    job->vrate.num = num;
    job->vrate.den = den;

    den = FUNC3(&job->vrate, 2.);
    if (den > 0)
    {
        int low, high, clock;
        FUNC4(&low, &high, &clock);
        job->vrate.num = clock;
        job->vrate.den = den;
    }
    if (FUNC0(((double)job->orig_vrate.num /  job->orig_vrate.den) -
            ((double)     job->vrate.num /       job->vrate.den)) > 0.05)
    {
        FUNC2("work: correcting framerate, %d/%d -> %d/%d",
               job->orig_vrate.num, job->orig_vrate.den,
               job->vrate.num, job->vrate.den);
    }
}