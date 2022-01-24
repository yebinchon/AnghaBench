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
struct TYPE_2__ {void* cd_mem_stream; } ;
typedef  TYPE_1__ mz_zip ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_EXIST_ERROR ; 
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  MZ_PARAM_ERROR ; 

int32_t FUNC0(void *handle, void **cd_mem_stream)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == NULL || cd_mem_stream == NULL)
        return MZ_PARAM_ERROR;
    *cd_mem_stream = zip->cd_mem_stream;
    if (*cd_mem_stream == NULL)
        return MZ_EXIST_ERROR;
    return MZ_OK;
}