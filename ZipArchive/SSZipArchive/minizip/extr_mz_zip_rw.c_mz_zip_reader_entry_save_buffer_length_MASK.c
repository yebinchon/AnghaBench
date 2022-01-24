#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* file_info; } ;
typedef  TYPE_2__ mz_zip_reader ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {scalar_t__ uncompressed_size; } ;

/* Variables and functions */
 scalar_t__ INT32_MAX ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

int32_t FUNC1(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;

    if (FUNC0(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == NULL)
        return MZ_PARAM_ERROR;
    if (reader->file_info->uncompressed_size > INT32_MAX)
        return MZ_PARAM_ERROR;

    /* Get the maximum size required for the save buffer */
    return (int32_t)reader->file_info->uncompressed_size;
}