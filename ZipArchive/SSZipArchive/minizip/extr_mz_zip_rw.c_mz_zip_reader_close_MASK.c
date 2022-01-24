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
struct TYPE_2__ {int /*<<< orphan*/ * mem_stream; int /*<<< orphan*/ * file_stream; int /*<<< orphan*/ * buffered_stream; int /*<<< orphan*/ * split_stream; int /*<<< orphan*/ * zip_handle; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

int32_t FUNC8(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    if (reader->zip_handle != NULL)
    {
        err = FUNC6(reader->zip_handle);
        FUNC7(&reader->zip_handle);
    }

    if (reader->split_stream != NULL)
    {
        FUNC4(reader->split_stream);
        FUNC5(&reader->split_stream);
    }

    if (reader->buffered_stream != NULL)
        FUNC0(&reader->buffered_stream);

    if (reader->file_stream != NULL)
        FUNC3(&reader->file_stream);

    if (reader->mem_stream != NULL)
    {
        FUNC1(reader->mem_stream);
        FUNC2(&reader->mem_stream);
    }

    return err;
}