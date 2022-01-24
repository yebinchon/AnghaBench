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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  SPP_DATA_LEN ; 
 int /*<<< orphan*/  SPP_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int portTICK_PERIOD_MS ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spp_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void * param)
{
    int size = 0;
    int fd = (int)param;
    do {
        size = FUNC2 (fd, spp_data, SPP_DATA_LEN);
        FUNC0(SPP_TAG, "fd = %d data_len = %d", fd, size);
        if (size == -1) {
            break;
        }
        FUNC1(SPP_TAG, spp_data, size);
        if (size == 0) {
            /*read fail due to there is no data, retry after 1s*/
            FUNC4(1000 / portTICK_PERIOD_MS);
        }
    } while (1);
    FUNC3();
}