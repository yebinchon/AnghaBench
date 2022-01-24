#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nb_samples; float sum; int /*<<< orphan*/  peak; } ;
struct TYPE_6__ {scalar_t__ tc_samples; } ;
typedef  TYPE_1__ DRMeterContext ;
typedef  TYPE_2__ ChannelStats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(DRMeterContext *s, ChannelStats *p, float sample)
{
    if (p->nb_samples >= s->tc_samples) {
        FUNC2(p);
    }

    p->peak = FUNC1(FUNC0(sample), p->peak);
    p->sum += sample * sample;
    p->nb_samples++;
}