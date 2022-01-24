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
typedef  int /*<<< orphan*/  RingbufHandle_t ;

/* Variables and functions */
 size_t CONT_DATA_LEN ; 
 int SMP_TEST_ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  TIMEOUT_TICKS ; 
 int /*<<< orphan*/ * continuous_data ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  rx_done ; 
 int /*<<< orphan*/  tx_done ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RingbufHandle_t buffer, size_t max_item_size)
{
    for (int iter = 0; iter < SMP_TEST_ITERATIONS; iter++) {
        size_t bytes_sent = 0;      //Number of data bytes sent in this iteration
        size_t next_item_size;      //Size of next item to send

        while (bytes_sent < CONT_DATA_LEN) {
            //Get size of next item
            next_item_size = FUNC1() % (max_item_size + 1);
            if (next_item_size + bytes_sent > CONT_DATA_LEN) {
                next_item_size = CONT_DATA_LEN - bytes_sent;
            }

            //Send item
            FUNC0(FUNC2(buffer, (void *)&(continuous_data[bytes_sent]), next_item_size, TIMEOUT_TICKS) == pdTRUE, "Failed to send an item");
            bytes_sent += next_item_size;
        }
        FUNC3(tx_done);
        FUNC4(rx_done, portMAX_DELAY);
    }
}