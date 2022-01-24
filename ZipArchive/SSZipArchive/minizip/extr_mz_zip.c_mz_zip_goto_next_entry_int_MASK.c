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
struct TYPE_2__ {int entry_scanned; int /*<<< orphan*/  file_info_stream; int /*<<< orphan*/  file_info; int /*<<< orphan*/  cd_stream; int /*<<< orphan*/  cd_current_pos; } ;
typedef  TYPE_1__ mz_zip ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  MZ_SEEK_SET ; 
 int /*<<< orphan*/  MZ_STREAM_PROP_DISK_NUMBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC3(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;

    if (zip == NULL)
        return MZ_PARAM_ERROR;

    zip->entry_scanned = 0;

    FUNC1(zip->cd_stream, MZ_STREAM_PROP_DISK_NUMBER, -1);

    err = FUNC0(zip->cd_stream, zip->cd_current_pos, MZ_SEEK_SET);
    if (err == MZ_OK)
        err = FUNC2(zip->cd_stream, 0, &zip->file_info, zip->file_info_stream);
    if (err == MZ_OK)
        zip->entry_scanned = 1;
    return err;
}