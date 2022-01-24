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
struct TYPE_3__ {int /*<<< orphan*/ * mem_stream; int /*<<< orphan*/ * file_stream; int /*<<< orphan*/ * buffered_stream; int /*<<< orphan*/ * split_stream; int /*<<< orphan*/ * zip_handle; scalar_t__ zip_cd; scalar_t__ comment; } ;
typedef  TYPE_1__ mz_zip_writer ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  MZ_VERSION_MADEBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int32_t FUNC11(void *handle)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t err = MZ_OK;


    if (writer->zip_handle != NULL)
    {
        FUNC9(writer->zip_handle, MZ_VERSION_MADEBY);
        if (writer->comment)
            FUNC8(writer->zip_handle, writer->comment);
        if (writer->zip_cd)
            FUNC10(writer);

        err = FUNC6(writer->zip_handle);
        FUNC7(&writer->zip_handle);
    }

    if (writer->split_stream != NULL)
    {
        FUNC4(writer->split_stream);
        FUNC5(&writer->split_stream);
    }

    if (writer->buffered_stream != NULL)
        FUNC0(&writer->buffered_stream);

    if (writer->file_stream != NULL)
        FUNC3(&writer->file_stream);

    if (writer->mem_stream != NULL)
    {
        FUNC1(writer->mem_stream);
        FUNC2(&writer->mem_stream);
    }

    return err;
}