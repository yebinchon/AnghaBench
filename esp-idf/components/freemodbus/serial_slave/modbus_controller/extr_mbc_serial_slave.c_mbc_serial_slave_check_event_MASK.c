#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * mbs_event_group; } ;
typedef  TYPE_1__ mb_slave_options_t ;
typedef  scalar_t__ mb_event_group_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef  int /*<<< orphan*/  BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* mbs_interface_ptr ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mb_event_group_t FUNC3(mb_event_group_t group)
{
    FUNC1((mbs_interface_ptr != NULL),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    FUNC0(mbs_opts->mbs_event_group != NULL);
    BaseType_t status = FUNC2(mbs_opts->mbs_event_group, (BaseType_t)group,
                                            pdTRUE , pdFALSE, portMAX_DELAY);
    return (mb_event_group_t)status;
}