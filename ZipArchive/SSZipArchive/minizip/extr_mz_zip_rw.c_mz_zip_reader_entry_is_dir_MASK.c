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
struct TYPE_2__ {int /*<<< orphan*/  zip_handle; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 

int32_t FUNC2(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    if (FUNC1(handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    return FUNC0(reader->zip_handle);
}