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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int open_mode; } ;
typedef  TYPE_1__ mz_zip ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int MZ_OPEN_MODE_WRITE ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t FUNC3(void *handle, int64_t uncompressed_size, uint32_t crc32)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;

    if (zip == NULL || FUNC0(handle) != MZ_OK)
        return MZ_PARAM_ERROR;

    if (zip->open_mode & MZ_OPEN_MODE_WRITE)
        err = FUNC2(handle, crc32, UINT64_MAX, uncompressed_size);
    else
        err = FUNC1(handle, NULL, NULL, NULL);

    return err;
}