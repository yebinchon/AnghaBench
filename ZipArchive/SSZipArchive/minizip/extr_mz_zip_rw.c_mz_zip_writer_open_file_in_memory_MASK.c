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
struct TYPE_2__ {int /*<<< orphan*/  mem_stream; } ;
typedef  TYPE_1__ mz_zip_writer ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_MEM_ERROR ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_CREATE ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 int /*<<< orphan*/  MZ_SEEK_END ; 
 int /*<<< orphan*/  MZ_SEEK_SET ; 
 scalar_t__ UINT32_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 scalar_t__ FUNC7 (void*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 (void*,int /*<<< orphan*/ ) ; 

int32_t FUNC12(void *handle, const char *path)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    void *file_stream = NULL;
    int64_t file_size = 0;
    int32_t err = 0;


    FUNC10(handle);

    FUNC5(&file_stream);

    err = FUNC7(file_stream, path, MZ_OPEN_MODE_READ);

    if (err != MZ_OK)
    {
        FUNC6(&file_stream);
        FUNC10(handle);
        return err;
    }

    FUNC8(file_stream, 0, MZ_SEEK_END);
    file_size = FUNC9(file_stream);
    FUNC8(file_stream, 0, MZ_SEEK_SET);

    if ((file_size <= 0) || (file_size > UINT32_MAX))
    {
        /* Memory size is too large or too small */

        FUNC4(file_stream);
        FUNC6(&file_stream);
        FUNC10(handle);
        return MZ_MEM_ERROR;
    }

    FUNC1(&writer->mem_stream);
    FUNC3(writer->mem_stream, (int32_t)file_size);
    FUNC2(writer->mem_stream, NULL, MZ_OPEN_MODE_CREATE);

    err = FUNC0(writer->mem_stream, file_stream, (int32_t)file_size);

    FUNC4(file_stream);
    FUNC6(&file_stream);

    if (err == MZ_OK)
        err = FUNC11(handle, writer->mem_stream);
    if (err != MZ_OK)
        FUNC10(handle);

    return err;
}