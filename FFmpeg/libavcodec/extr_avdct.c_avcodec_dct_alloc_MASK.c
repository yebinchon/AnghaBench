#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * av_class; } ;
typedef  TYPE_1__ AVDCT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  avdct_class ; 

AVDCT *FUNC2(void)
{
    AVDCT *dsp = FUNC0(sizeof(AVDCT));

    if (!dsp)
        return NULL;

    dsp->av_class = &avdct_class;
    FUNC1(dsp);

    return dsp;
}