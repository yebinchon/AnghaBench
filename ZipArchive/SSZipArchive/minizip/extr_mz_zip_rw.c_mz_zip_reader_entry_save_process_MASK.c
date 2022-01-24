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
struct TYPE_3__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  zip_handle; int /*<<< orphan*/ * file_info; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  scalar_t__ (* mz_stream_write_cb ) (void*,int /*<<< orphan*/ ,scalar_t__) ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_END_OF_STREAM ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ MZ_WRITE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

int32_t FUNC5(void *handle, void *stream, mz_stream_write_cb write_cb)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    int32_t read = 0;
    int32_t written = 0;


    if (FUNC4(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == NULL)
        return MZ_PARAM_ERROR;
    if (write_cb == NULL)
        return MZ_PARAM_ERROR;

    /* If the entry isn't open for reading, open it */
    if (FUNC0(reader->zip_handle) != MZ_OK)
        err = FUNC2(handle);

    if (err != MZ_OK)
        return err;

    /* Unzip entry in zip file */
    read = FUNC3(handle, reader->buffer, sizeof(reader->buffer));

    if (read == 0)
    {
        /* If we are done close the entry */
        err = FUNC1(handle);
        if (err != MZ_OK)
            return err;

        return MZ_END_OF_STREAM;
    }

    if (read > 0)
    {
        /* Write the data to the specified stream */
        written = write_cb(stream, reader->buffer, read);
        if (written != read)
            return MZ_WRITE_ERROR;
    }

    return read;
}