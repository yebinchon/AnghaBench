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
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ progress_cb_interval_ms; int /*<<< orphan*/ * file_info; int /*<<< orphan*/  progress_userdata; int /*<<< orphan*/  (* progress_cb ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;} ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  int /*<<< orphan*/  mz_stream_write_cb ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_END_OF_STREAM ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

int32_t FUNC6(void *handle, void *stream, mz_stream_write_cb write_cb)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    uint64_t current_time = 0;
    uint64_t update_time = 0;
    int64_t current_pos = 0;
    int64_t update_pos = 0;
    int32_t err = MZ_OK;
    int32_t written = 0;

    if (FUNC2(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == NULL)
        return MZ_PARAM_ERROR;

    /* Update the progress at the beginning */
    if (reader->progress_cb != NULL)
        reader->progress_cb(handle, reader->progress_userdata, reader->file_info, current_pos);

    /* Write data to stream until done */
    while (err == MZ_OK)
    {
        written = FUNC1(handle, stream, write_cb);
        if (written == MZ_END_OF_STREAM)
            break;
        if (written > 0)
            current_pos += written;
        if (written < 0)
            err = written;

        /* Update progress if enough time have passed */
        current_time = FUNC0();
        if ((current_time - update_time) > reader->progress_cb_interval_ms)
        {
            if (reader->progress_cb != NULL)
                reader->progress_cb(handle, reader->progress_userdata, reader->file_info, current_pos);

            update_pos = current_pos;
            update_time = current_time;
        }
    }

    /* Update the progress at the end */
    if (reader->progress_cb != NULL && update_pos != current_pos)
        reader->progress_cb(handle, reader->progress_userdata, reader->file_info, current_pos);

    return err;
}