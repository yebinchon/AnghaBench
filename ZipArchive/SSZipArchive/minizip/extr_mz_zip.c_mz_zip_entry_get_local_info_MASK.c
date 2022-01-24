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
typedef  int /*<<< orphan*/  mz_zip_file ;
struct TYPE_2__ {int /*<<< orphan*/  local_file_info; } ;
typedef  TYPE_1__ mz_zip ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 (void*) ; 

int32_t FUNC1(void *handle, mz_zip_file **local_file_info)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == NULL || FUNC0(handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    *local_file_info = &zip->local_file_info;
    return MZ_OK;
}