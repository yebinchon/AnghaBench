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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ (* overwrite_cb ) (void*,int /*<<< orphan*/ ,char const*) ;int /*<<< orphan*/  split_stream; int /*<<< orphan*/  buffered_stream; int /*<<< orphan*/  file_stream; int /*<<< orphan*/  overwrite_userdata; } ;
typedef  TYPE_1__ mz_zip_writer ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  directory ;

/* Variables and functions */
 scalar_t__ MZ_INTERNAL_ERROR ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_OPEN_MODE_APPEND ; 
 scalar_t__ MZ_OPEN_MODE_CREATE ; 
 scalar_t__ MZ_OPEN_MODE_READWRITE ; 
 int /*<<< orphan*/  MZ_STREAM_PROP_DISK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 scalar_t__ FUNC10 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char) ; 
 scalar_t__ FUNC14 (void*,int /*<<< orphan*/ ,char const*) ; 

int32_t FUNC15(void *handle, const char *path, int64_t disk_size, uint8_t append)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t mode = MZ_OPEN_MODE_READWRITE;
    int32_t err = MZ_OK;
    int32_t err_cb = 0;
    char directory[320];

    FUNC9(handle);

    if (FUNC1(path) != MZ_OK)
    {
        /* If the file doesn't exist, we don't append file */
        mode |= MZ_OPEN_MODE_CREATE;

        /* Create destination directory if it doesn't already exist */
        if (FUNC11(path, '/') != NULL || FUNC13(path, '\\') != NULL)
        {
            FUNC12(directory, path, sizeof(directory));
            FUNC2(directory);
            if (FUNC1(directory) != MZ_OK)
                FUNC0(directory);
        }
    }
    else if (append)
    {
        mode |= MZ_OPEN_MODE_APPEND;
    }
    else
    {
        if (writer->overwrite_cb != NULL)
            err_cb = writer->overwrite_cb(handle, writer->overwrite_userdata, path);

        if (err_cb == MZ_INTERNAL_ERROR)
            return err;

        if (err_cb == MZ_OK)
            mode |= MZ_OPEN_MODE_CREATE;
        else
            mode |= MZ_OPEN_MODE_APPEND;
    }

    FUNC5(&writer->file_stream);
    FUNC3(&writer->buffered_stream);
    FUNC7(&writer->split_stream);

    FUNC6(writer->buffered_stream, writer->file_stream);
    FUNC6(writer->split_stream, writer->buffered_stream);

    FUNC8(writer->split_stream, MZ_STREAM_PROP_DISK_SIZE, disk_size);

    err = FUNC4(writer->split_stream, path, mode);
    if (err == MZ_OK)
        err = FUNC10(handle, writer->split_stream, mode);

    return err;
}