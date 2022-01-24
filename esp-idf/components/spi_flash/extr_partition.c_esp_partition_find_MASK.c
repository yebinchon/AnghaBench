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
typedef  int /*<<< orphan*/  esp_partition_type_t ;
typedef  int /*<<< orphan*/  esp_partition_subtype_t ;
typedef  int /*<<< orphan*/ * esp_partition_iterator_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

esp_partition_iterator_t FUNC3(esp_partition_type_t type,
        esp_partition_subtype_t subtype, const char* label)
{
    if (FUNC0() != ESP_OK) {
        return NULL;
    }
    // create an iterator pointing to the start of the list
    // (next item will be the first one)
    esp_partition_iterator_t it = FUNC2(type, subtype, label);
    // advance iterator to the next item which matches constraints
    it = FUNC1(it);
    // if nothing found, it == NULL and iterator has been released
    return it;
}