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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  esp_himem_rangehandle_t ;
typedef  int /*<<< orphan*/  esp_himem_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ESP_HIMEM_BLKSZ ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static bool FUNC11(int check_size, int seed)
{
    esp_himem_handle_t mh; //Handle for the address space we're using
    esp_himem_rangehandle_t rh; //Handle for the actual RAM.
    bool ret = true;

    //Allocate the memory we're going to check.
    FUNC0(FUNC2(check_size, &mh));
    //Allocate a block of address range
    FUNC0(FUNC3(ESP_HIMEM_BLKSZ, &rh));
    for (int i = 0; i < check_size; i += ESP_HIMEM_BLKSZ) {
        uint32_t *ptr = NULL;
        //Map in block, write pseudo-random data, unmap block.
        FUNC0(FUNC6(mh, rh, i, 0, ESP_HIMEM_BLKSZ, 0, (void**)&ptr));
        FUNC8(i ^ seed, ptr, ESP_HIMEM_BLKSZ); //
        FUNC0(FUNC7(rh, ptr, ESP_HIMEM_BLKSZ));
    }
    FUNC10(5); //give the OS some time to do things so the task watchdog doesn't bark
    for (int i = 0; i < check_size; i += ESP_HIMEM_BLKSZ) {
        uint32_t *ptr;
        //Map in block, check against earlier written pseudo-random data, unmap block.
        FUNC0(FUNC6(mh, rh, i, 0, ESP_HIMEM_BLKSZ, 0, (void**)&ptr));
        if (!FUNC1(i ^ seed, ptr, ESP_HIMEM_BLKSZ, i)) {
            FUNC9("Error in block %d\n", i / ESP_HIMEM_BLKSZ);
            ret = false;
        }
        FUNC0(FUNC7(rh, ptr, ESP_HIMEM_BLKSZ));
        if (!ret) break; //don't check rest of blocks if error occurred
    }
    //Okay, all done!
    FUNC0(FUNC4(mh));
    FUNC0(FUNC5(rh));
    return ret;
}