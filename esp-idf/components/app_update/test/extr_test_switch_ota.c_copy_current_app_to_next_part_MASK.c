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
struct TYPE_8__ {int /*<<< orphan*/  address; int /*<<< orphan*/  subtype; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_ota_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTA_SIZE_UNKNOWN ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC8(const esp_partition_t *cur_app_partition, const esp_partition_t *next_app_partition)
{
    FUNC6(NULL);
    FUNC1(NULL, next_app_partition);
    FUNC0(TAG, "Writing to partition subtype %d at offset 0x%x", next_app_partition->subtype, next_app_partition->address);

    esp_ota_handle_t update_handle = 0;
    FUNC2(FUNC4(next_app_partition, OTA_SIZE_UNKNOWN, &update_handle));

    FUNC3(update_handle, cur_app_partition);

    FUNC2(FUNC5(update_handle));
    FUNC2(FUNC7(next_app_partition));
}