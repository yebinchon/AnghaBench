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
struct TYPE_3__ {int /*<<< orphan*/ * sps; int /*<<< orphan*/ * pps; int /*<<< orphan*/  pps_ref; int /*<<< orphan*/  sps_ref; int /*<<< orphan*/ * pps_list; int /*<<< orphan*/ * sps_list; } ;
typedef  TYPE_1__ H264ParamSets ;

/* Variables and functions */
 int MAX_PPS_COUNT ; 
 int MAX_SPS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(H264ParamSets *ps)
{
    int i;

    for (i = 0; i < MAX_SPS_COUNT; i++)
        FUNC0(&ps->sps_list[i]);

    for (i = 0; i < MAX_PPS_COUNT; i++)
        FUNC0(&ps->pps_list[i]);

    FUNC0(&ps->sps_ref);
    FUNC0(&ps->pps_ref);

    ps->pps = NULL;
    ps->sps = NULL;
}