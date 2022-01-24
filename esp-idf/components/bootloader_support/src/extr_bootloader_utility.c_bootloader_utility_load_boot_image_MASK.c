#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ esp_partition_pos_t ;
typedef  int /*<<< orphan*/  esp_image_metadata_t ;
struct TYPE_10__ {int app_count; TYPE_1__ test; } ;
typedef  TYPE_2__ bootloader_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FACTORY_INDEX ; 
 int /*<<< orphan*/  TAG ; 
 int TEST_APP_INDEX ; 
 int /*<<< orphan*/  TRY_LOG_FORMAT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_1__ FUNC6 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC11(const bootloader_state_t *bs, int start_index)
{
    int index = start_index;
    esp_partition_pos_t part;
    esp_image_metadata_t image_data;

    if (start_index == TEST_APP_INDEX) {
        if (FUNC10(&bs->test, &image_data)) {
            FUNC7(&image_data);
        } else {
            FUNC1(TAG, "No bootable test partition in the partition table");
            FUNC3();
        }
    }

    /* work backwards from start_index, down to the factory app */
    for (index = start_index; index >= FACTORY_INDEX; index--) {
        part = FUNC6(bs, index);
        if (part.size == 0) {
            continue;
        }
        FUNC0(TAG, TRY_LOG_FORMAT, index, part.offset, part.size);
        if (FUNC5(&part) && FUNC10(&part, &image_data)) {
            FUNC9(bs, index);
            FUNC7(&image_data);
        }
        FUNC8(index);
    }

    /* failing that work forwards from start_index, try valid OTA slots */
    for (index = start_index + 1; index < bs->app_count; index++) {
        part = FUNC6(bs, index);
        if (part.size == 0) {
            continue;
        }
        FUNC0(TAG, TRY_LOG_FORMAT, index, part.offset, part.size);
        if (FUNC5(&part) && FUNC10(&part, &image_data)) {
            FUNC9(bs, index);
            FUNC7(&image_data);
        }
        FUNC8(index);
    }

    if (FUNC10(&bs->test, &image_data)) {
        FUNC2(TAG, "Falling back to test app as only bootable partition");
        FUNC7(&image_data);
    }

    FUNC1(TAG, "No bootable app partitions in the partition table");
    FUNC4(&image_data, sizeof(esp_image_metadata_t));
    FUNC3();
}