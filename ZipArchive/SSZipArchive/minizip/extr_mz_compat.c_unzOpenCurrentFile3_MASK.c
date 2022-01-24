#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ unzFile ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int compression_method; int flag; } ;
typedef  TYPE_1__ mz_zip_file ;
struct TYPE_5__ {int /*<<< orphan*/  entry_pos; int /*<<< orphan*/  handle; scalar_t__ total_out; } ;
typedef  TYPE_2__ mz_compat ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
#define  MZ_ZIP_FLAG_DEFLATE_FAST 130 
#define  MZ_ZIP_FLAG_DEFLATE_MAX 129 
#define  MZ_ZIP_FLAG_DEFLATE_SUPER_FAST 128 
 int UNZ_PARAMERROR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**) ; 

int FUNC4(unzFile file, int *method, int *level, int raw, const char *password)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = NULL;
    int32_t err = MZ_OK;
    void *stream = NULL;

    if (compat == NULL)
        return UNZ_PARAMERROR;
    if (method != NULL)
        *method = 0;
    if (level != NULL)
        *level = 0;

    compat->total_out = 0;
    err = FUNC2(compat->handle, (uint8_t)raw, password);
    if (err == MZ_OK)
        err = FUNC1(compat->handle, &file_info);
    if (err == MZ_OK)
    {
        if (method != NULL)
        {
            *method = file_info->compression_method;
        }

        if (level != NULL)
        {
            *level = 6;
            switch (file_info->flag & 0x06)
            {
            case MZ_ZIP_FLAG_DEFLATE_SUPER_FAST:
                *level = 1;
                break;
            case MZ_ZIP_FLAG_DEFLATE_FAST:
                *level = 2;
                break;
            case MZ_ZIP_FLAG_DEFLATE_MAX:
                *level = 9;
                break;
            }
        }
    }
    if (err == MZ_OK)
        err = FUNC3(compat->handle, &stream);
    if (err == MZ_OK)
        compat->entry_pos = FUNC0(stream);
    return err;
}