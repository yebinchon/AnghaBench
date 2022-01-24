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
struct TYPE_3__ {int /*<<< orphan*/  zip_handle; scalar_t__ cd_zipped; scalar_t__ cd_verified; } ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int32_t FUNC5(void *handle, void *stream)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    reader->cd_verified = 0;
    reader->cd_zipped = 0;

    FUNC0(&reader->zip_handle);
    FUNC4(reader->zip_handle, 1);

    err = FUNC1(reader->zip_handle, stream, MZ_OPEN_MODE_READ);

    if (err != MZ_OK)
    {
        FUNC2(handle);
        return err;
    }

    FUNC3(reader);
    return MZ_OK;
}