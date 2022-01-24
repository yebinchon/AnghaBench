#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  store_data ;
typedef  int /*<<< orphan*/  read_data ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ esp_partition_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_ANY ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_DATA ; 
 int /*<<< orphan*/  SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

void FUNC9(void)
{
    /* 
    * This example uses the partition table from ../partitions_example.csv. For reference, its contents are as follows:
    * 
    *  nvs,        data, nvs,      0x9000,  0x6000,
    *  phy_init,   data, phy,      0xf000,  0x1000,
    *  factory,    app,  factory,  0x10000, 1M,
    *  storage,    data, ,             , 0x40000,
    */
   
    // Find the partition map in the partition table
    const esp_partition_t *partition = FUNC4(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_ANY, "storage");
    FUNC2(partition != NULL);

    static char store_data[] = "ESP-IDF Partition Operations Example (Read, Erase, Write)";
    static char read_data[sizeof(store_data)];

    // Erase entire partition
    FUNC8(read_data, 0xFF, sizeof(read_data));
    FUNC0(FUNC3(partition, 0, partition->size));

    // Write the data, starting from the beginning of the partition
    FUNC0(FUNC6(partition, 0, store_data, sizeof(store_data)));
    FUNC1(TAG, "Written data: %s", store_data);
    
    // Read back the data, checking that read data and written data match
    FUNC0(FUNC5(partition, 0, read_data, sizeof(read_data)));
    FUNC2(FUNC7(store_data, read_data, sizeof(read_data)) == 0);
    FUNC1(TAG, "Read data: %s", read_data);

    // Erase the area where the data was written. Erase size shoud be a multiple of SPI_FLASH_SEC_SIZE
    // and also be SPI_FLASH_SEC_SIZE aligned
    FUNC0(FUNC3(partition, 0, SPI_FLASH_SEC_SIZE));

    // Read back the data (should all now be 0xFF's)
    FUNC8(store_data, 0xFF, sizeof(read_data));
    FUNC0(FUNC5(partition, 0, read_data, sizeof(read_data)));
    FUNC2(FUNC7(store_data, read_data, sizeof(read_data)) == 0);

    FUNC1(TAG, "Erased data");

    FUNC1(TAG, "Example end");
}