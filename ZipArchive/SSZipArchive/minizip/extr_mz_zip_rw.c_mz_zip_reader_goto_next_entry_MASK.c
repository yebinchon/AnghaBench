#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * file_info; int /*<<< orphan*/  zip_handle; int /*<<< orphan*/ * pattern; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  mz_zip_reader_locate_entry_cb ; 

int32_t FUNC6(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    if (FUNC5(handle) != MZ_OK)
        return MZ_PARAM_ERROR;

    if (FUNC1(reader->zip_handle) == MZ_OK)
        FUNC4(handle);

    if (reader->pattern == NULL)
        err = FUNC2(reader->zip_handle);
    else
        err = FUNC3(reader->zip_handle, reader, mz_zip_reader_locate_entry_cb);

    reader->file_info = NULL;
    if (err == MZ_OK)
        err = FUNC0(reader->zip_handle, &reader->file_info);

    return err;
}