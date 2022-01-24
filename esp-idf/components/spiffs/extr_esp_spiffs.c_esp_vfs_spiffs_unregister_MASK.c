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
typedef  scalar_t__ esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  base_path; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 TYPE_1__** _efs ; 
 scalar_t__ FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC3(const char* partition_label)
{
    int index;
    if (FUNC0(partition_label, &index) != ESP_OK) {
        return ESP_ERR_INVALID_STATE;
    }
    esp_err_t err = FUNC2(_efs[index]->base_path);
    if (err != ESP_OK) {
        return err;
    }
    FUNC1(&_efs[index]);
    return ESP_OK;
}