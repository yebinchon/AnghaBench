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
struct TYPE_3__ {int /*<<< orphan*/ * vps; int /*<<< orphan*/ * pps; int /*<<< orphan*/ * sps; int /*<<< orphan*/ * pps_list; int /*<<< orphan*/ * sps_list; int /*<<< orphan*/ * vps_list; } ;
typedef  TYPE_1__ HEVCParamSets ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(HEVCParamSets *ps)
{
    int i;

    for (i = 0; i < FUNC0(ps->vps_list); i++)
        FUNC1(&ps->vps_list[i]);
    for (i = 0; i < FUNC0(ps->sps_list); i++)
        FUNC1(&ps->sps_list[i]);
    for (i = 0; i < FUNC0(ps->pps_list); i++)
        FUNC1(&ps->pps_list[i]);

    ps->sps = NULL;
    ps->pps = NULL;
    ps->vps = NULL;
}