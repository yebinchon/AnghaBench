#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/ * filename; } ;
struct TYPE_4__ {TYPE_1__ file_info; scalar_t__ entry_scanned; } ;
typedef  TYPE_2__ mz_zip ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

int32_t FUNC3(void *handle, const char *filename, uint8_t ignore_case)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;
    int32_t result = 0;

    if (zip == NULL || filename == NULL)
        return MZ_PARAM_ERROR;

    /* If we are already on the current entry, no need to search */
    if ((zip->entry_scanned) && (zip->file_info.filename != NULL))
    {
        result = FUNC2(zip->file_info.filename, filename, ignore_case);
        if (result == 0)
            return MZ_OK;
    }

    /* Search all entries starting at the first */
    err = FUNC0(handle);
    while (err == MZ_OK)
    {
        result = FUNC2(zip->file_info.filename, filename, ignore_case);
        if (result == 0)
            return MZ_OK;

        err = FUNC1(handle);
    }

    return err;
}