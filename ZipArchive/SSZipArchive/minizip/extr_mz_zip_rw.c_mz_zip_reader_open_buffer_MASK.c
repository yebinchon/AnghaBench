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
struct TYPE_2__ {int /*<<< orphan*/  mem_stream; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_CREATE ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 int /*<<< orphan*/  MZ_SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ ) ; 

int32_t FUNC8(void *handle, uint8_t *buf, int32_t len, uint8_t copy)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    FUNC6(handle);

    FUNC0(&reader->mem_stream);

    if (copy)
    {
        FUNC4(reader->mem_stream, len);
        FUNC1(reader->mem_stream, NULL, MZ_OPEN_MODE_CREATE);
        FUNC5(reader->mem_stream, buf, len);
        FUNC2(reader->mem_stream, 0, MZ_SEEK_SET);
    }
    else
    {
        FUNC1(reader->mem_stream, NULL, MZ_OPEN_MODE_READ);
        FUNC3(reader->mem_stream, buf, len);
    }

    if (err == MZ_OK)
        err = FUNC7(handle, reader->mem_stream);

    return err;
}