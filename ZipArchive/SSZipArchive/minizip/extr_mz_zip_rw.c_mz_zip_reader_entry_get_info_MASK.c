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
struct TYPE_2__ {int /*<<< orphan*/ * file_info; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  int /*<<< orphan*/  mz_zip_file ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_EXIST_ERROR ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 (void*) ; 

int32_t FUNC1(void *handle, mz_zip_file **file_info)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    if (file_info == NULL || FUNC0(handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    *file_info = reader->file_info;
    if (*file_info == NULL)
        return MZ_EXIST_ERROR;
    return err;
}