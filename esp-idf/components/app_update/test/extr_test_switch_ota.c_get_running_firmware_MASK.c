#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ subtype; int /*<<< orphan*/  address; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ esp_partition_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_TEST ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 

__attribute__((used)) static const esp_partition_t* FUNC5(void)
{
    const esp_partition_t *configured = FUNC3();
    const esp_partition_t *running = FUNC4();
    FUNC0(TAG, "Running partition type %d subtype %d (offset 0x%08x)",
            running->type, running->subtype, running->address);
    FUNC0(TAG, "Configured partition type %d subtype %d (offset 0x%08x)",
            configured->type, configured->subtype, configured->address);
    FUNC2(NULL, configured);
    FUNC2(NULL, running);
    if (running->subtype != ESP_PARTITION_SUBTYPE_APP_TEST) {
        FUNC1(running, configured);
    }
    return running;
}