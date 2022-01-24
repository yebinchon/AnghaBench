#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_partition_t ;
struct TYPE_4__ {int size; } ;
typedef  TYPE_1__ esp_flash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_DATA_FAT ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_DATA ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static const esp_partition_t* FUNC3(esp_flash_t* ext_flash, const char* partition_label)
{
    FUNC1(TAG, "Adding external Flash as a partition, label=\"%s\", size=%d KB", partition_label, ext_flash->size / 1024);
    const esp_partition_t* fat_partition;
    FUNC0(FUNC2(ext_flash, 0, ext_flash->size, partition_label, ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_FAT, &fat_partition));
    return fat_partition;
}