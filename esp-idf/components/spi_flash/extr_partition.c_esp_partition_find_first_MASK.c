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
typedef  int /*<<< orphan*/  esp_partition_t ;
typedef  int /*<<< orphan*/  esp_partition_subtype_t ;
typedef  int /*<<< orphan*/ * esp_partition_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

const esp_partition_t* FUNC3(esp_partition_type_t type,
        esp_partition_subtype_t subtype, const char* label)
{
    esp_partition_iterator_t it = FUNC0(type, subtype, label);
    if (it == NULL) {
        return NULL;
    }
    const esp_partition_t* res = FUNC1(it);
    FUNC2(it);
    return res;
}