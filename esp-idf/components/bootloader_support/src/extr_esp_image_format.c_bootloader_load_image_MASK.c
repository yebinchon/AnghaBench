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
typedef  int /*<<< orphan*/  esp_partition_pos_t ;
typedef  int /*<<< orphan*/  esp_image_metadata_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_IMAGE_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

esp_err_t FUNC1(const esp_partition_pos_t *part, esp_image_metadata_t *data)
{
#ifdef BOOTLOADER_BUILD
    return image_load(ESP_IMAGE_LOAD, part, data);
#else
    return ESP_FAIL;
#endif
}