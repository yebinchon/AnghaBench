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
struct TYPE_5__ {void* value; void* type; } ;
struct TYPE_6__ {TYPE_1__ ind; } ;
typedef  TYPE_2__ tBTA_AG_RES_DATA ;
typedef  void* UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_HANDLE_ALL ; 
 int /*<<< orphan*/  BTA_AG_IND_RES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(UINT16 indicator, UINT16 value)
{
    tBTA_AG_RES_DATA ag_res;
    FUNC1(&ag_res, 0, sizeof(tBTA_AG_RES_DATA));
    ag_res.ind.type = indicator;
    ag_res.ind.value = value;
    FUNC0(BTA_AG_HANDLE_ALL, BTA_AG_IND_RES, &ag_res);
}