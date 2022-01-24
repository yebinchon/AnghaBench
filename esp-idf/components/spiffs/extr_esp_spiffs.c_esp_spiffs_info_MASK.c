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
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*,size_t*) ; 
 TYPE_1__** _efs ; 
 scalar_t__ FUNC1 (char const*,int*) ; 

esp_err_t FUNC2(const char* partition_label, size_t *total_bytes, size_t *used_bytes)
{
    int index;
    if (FUNC1(partition_label, &index) != ESP_OK) {
        return ESP_ERR_INVALID_STATE;
    }
    FUNC0(_efs[index]->fs, total_bytes, used_bytes);
    return ESP_OK;
}