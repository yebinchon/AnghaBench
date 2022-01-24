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
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ uncompressed_size; } ;

/* Variables and functions */
 scalar_t__ INT32_MAX ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  mz_stream_mem_write ; 
 scalar_t__ FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

int32_t FUNC6(void *handle, void *buf, int32_t len)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    void *mem_stream = NULL;
    int32_t err = MZ_OK;

    if (FUNC5(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == NULL)
        return MZ_PARAM_ERROR;
    if (reader->file_info->uncompressed_size > INT32_MAX)
        return MZ_PARAM_ERROR;
    if (len != (int32_t)reader->file_info->uncompressed_size)
        return MZ_PARAM_ERROR;

    /* Create a memory stream backed by our buffer and save to it */
    FUNC0(&mem_stream);
    FUNC3(mem_stream, buf, len);

    err = FUNC2(mem_stream, NULL, MZ_OPEN_MODE_READ);
    if (err == MZ_OK)
        err = FUNC4(handle, mem_stream, mz_stream_mem_write);

    FUNC1(&mem_stream);
    return err;
}