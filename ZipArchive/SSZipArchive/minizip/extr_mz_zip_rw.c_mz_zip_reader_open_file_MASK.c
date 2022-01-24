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
struct TYPE_2__ {int /*<<< orphan*/  split_stream; int /*<<< orphan*/  buffered_stream; int /*<<< orphan*/  file_stream; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ ) ; 

int32_t FUNC7(void *handle, const char *path)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;


    FUNC5(handle);

    FUNC2(&reader->file_stream);
    FUNC0(&reader->buffered_stream);
    FUNC4(&reader->split_stream);

    FUNC3(reader->buffered_stream, reader->file_stream);
    FUNC3(reader->split_stream, reader->buffered_stream);

    err = FUNC1(reader->split_stream, path, MZ_OPEN_MODE_READ);
    if (err == MZ_OK)
        err = FUNC6(handle, reader->split_stream);
    return err;
}