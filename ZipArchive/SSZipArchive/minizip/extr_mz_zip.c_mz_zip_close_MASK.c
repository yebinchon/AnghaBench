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
struct TYPE_2__ {int open_mode; int /*<<< orphan*/ * cd_stream; int /*<<< orphan*/ * stream; int /*<<< orphan*/ * comment; int /*<<< orphan*/ * local_file_info_stream; int /*<<< orphan*/ * file_info_stream; int /*<<< orphan*/ * cd_mem_stream; } ;
typedef  TYPE_1__ mz_zip ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MZ_OK ; 
 int MZ_OPEN_MODE_WRITE ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (void*) ; 

int32_t FUNC9(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;

    if (zip == NULL)
        return MZ_PARAM_ERROR;

    FUNC7("Zip - Close\n");

    if (FUNC6(handle) == MZ_OK)
        err = FUNC5(handle);

    if ((err == MZ_OK) && (zip->open_mode & MZ_OPEN_MODE_WRITE))
        err = FUNC8(handle);

    if (zip->cd_mem_stream != NULL)
    {
        FUNC1(zip->cd_mem_stream);
        FUNC2(&zip->cd_mem_stream);
    }

    if (zip->file_info_stream != NULL)
    {
        FUNC3(zip->file_info_stream);
        FUNC4(&zip->file_info_stream);
    }
    if (zip->local_file_info_stream != NULL)
    {
        FUNC3(zip->local_file_info_stream);
        FUNC4(&zip->local_file_info_stream);
    }

    if (zip->comment)
    {
        FUNC0(zip->comment);
        zip->comment = NULL;
    }

    zip->stream = NULL;
    zip->cd_stream = NULL;

    return err;
}