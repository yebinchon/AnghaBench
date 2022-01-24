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
struct TYPE_5__ {scalar_t__* pids; } ;
typedef  TYPE_1__ MpegTSContext ;

/* Variables and functions */
 int NB_PID_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(MpegTSContext *ts)
{
    int i;

    FUNC0(ts);

    for (i = 0; i < NB_PID_MAX; i++)
        if (ts->pids[i])
            FUNC1(ts, ts->pids[i]);
}