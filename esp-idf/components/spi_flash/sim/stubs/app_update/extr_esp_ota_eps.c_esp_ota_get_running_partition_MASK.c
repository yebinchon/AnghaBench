#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_ANY ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_APP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const esp_partition_t* FUNC2(void)
{
    // Return first instance of an app partition
    const esp_partition_t* partition = FUNC1(ESP_PARTITION_TYPE_APP,
                                                     ESP_PARTITION_SUBTYPE_ANY,
                                                     NULL);
    FUNC0(partition != NULL);

    return partition;
}