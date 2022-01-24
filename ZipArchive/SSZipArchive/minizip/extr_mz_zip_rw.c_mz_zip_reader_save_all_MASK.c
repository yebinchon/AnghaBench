#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  utf8_name ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  resolved_name ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_4__ {scalar_t__ encoding; TYPE_1__* file_info; } ;
typedef  TYPE_2__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {char* filename; int flag; } ;

/* Variables and functions */
 scalar_t__ MZ_END_OF_LIST ; 
 scalar_t__ MZ_OK ; 
 int MZ_ZIP_FLAG_UTF8 ; 
 int /*<<< orphan*/ * FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (void*,char*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int32_t FUNC8(void *handle, const char *destination_dir)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    uint8_t *utf8_string = NULL;
    char path[512];
    char utf8_name[256];
    char resolved_name[256];

    err = FUNC5(handle);

    if (err == MZ_END_OF_LIST)
        return err;

    while (err == MZ_OK)
    {
        /* Construct output path */
        path[0] = 0;

        FUNC7(utf8_name, reader->file_info->filename, sizeof(utf8_name) - 1);
        utf8_name[sizeof(utf8_name) - 1] = 0;

        if ((reader->encoding > 0) && (reader->file_info->flag & MZ_ZIP_FLAG_UTF8) == 0)
        {
            utf8_string = FUNC0(reader->file_info->filename, reader->encoding);
            if (utf8_string)
            {
                FUNC7(utf8_name, (char *)utf8_string, sizeof(utf8_name) - 1);
                utf8_name[sizeof(utf8_name) - 1] = 0;
                FUNC1(&utf8_string);
            }
        }

        err = FUNC3(utf8_name, resolved_name, sizeof(resolved_name));
        if (err != MZ_OK)
            break;

        if (destination_dir != NULL)
            FUNC2(path, destination_dir, sizeof(path));

        FUNC2(path, resolved_name, sizeof(path));

        /* Save file to disk */
        err = FUNC4(handle, path);

        if (err == MZ_OK)
            err = FUNC6(handle);
    }

    if (err == MZ_END_OF_LIST)
        return MZ_OK;

    return err;
}