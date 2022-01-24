#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  counter; int /*<<< orphan*/  trigger_sem; } ;
typedef  TYPE_1__ counter_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *vp_config)
{
    counter_config_t *config = (counter_config_t *)vp_config;
    FUNC0("counter_task running...\n");
    while(1) {
        FUNC1(config->trigger_sem, portMAX_DELAY);
        config->counter++;
    }
}