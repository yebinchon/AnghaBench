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
typedef  int /*<<< orphan*/  uint8_t ;
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  path_dir ;
struct TYPE_2__ {scalar_t__ store_links; int /*<<< orphan*/  follow_links; } ;
typedef  TYPE_1__ mz_zip_writer ;
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  full_path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ MZ_EXIST_ERROR ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 scalar_t__ FUNC7 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (void*,char const*,char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char) ; 

int32_t FUNC14(void *handle, const char *path, const char *root_path,
    uint8_t include_path, uint8_t recursive)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    DIR *dir = NULL;
    struct dirent *entry = NULL;
    int32_t err = MZ_OK;
    int16_t is_dir = 0;
    const char *filename = NULL;
    const char *filenameinzip = path;
    char *wildcard_ptr = NULL;
    char full_path[1024];
    char path_dir[1024];


    if (FUNC13(path, '*') != NULL)
    {
        FUNC12(path_dir, path, sizeof(path_dir) - 1);
        path_dir[sizeof(path_dir) - 1] = 0;
        FUNC8(path_dir);
        wildcard_ptr = path_dir + FUNC11(path_dir) + 1;
        root_path = path = path_dir;
    }
    else
    {
        if (FUNC1(path) == MZ_OK)
            is_dir = 1;

        /* Construct the filename that our file will be stored in the zip as */
        if (root_path == NULL)
            root_path = path;

        /* Should the file be stored with any path info at all? */
        if (!include_path)
        {
            if (!is_dir && root_path == path)
            {
                if (FUNC7(filenameinzip, &filename) == MZ_OK)
                    filenameinzip = filename;
            }
            else
            {
                filenameinzip += FUNC11(root_path);
            }
        }

        if (!writer->store_links && !writer->follow_links)
        {
            if (FUNC2(path) == MZ_OK)
                return err;
        }

        if (*filenameinzip != 0)
            err = FUNC9(handle, path, filenameinzip);

        if (!is_dir)
            return err;

        if (writer->store_links)
        {
            if (FUNC2(path) == MZ_OK)
                return err;
        }
    }

    dir = FUNC3(path);

    if (dir == NULL)
        return MZ_EXIST_ERROR;

    while ((entry = FUNC4(dir)) != NULL)
    {
        if (FUNC10(entry->d_name, ".") == 0 || FUNC10(entry->d_name, "..") == 0)
            continue;

        full_path[0] = 0;
        FUNC5(full_path, path, sizeof(full_path));
        FUNC5(full_path, entry->d_name, sizeof(full_path));

        if (!recursive && FUNC1(full_path) == MZ_OK)
            continue;

        if ((wildcard_ptr != NULL) && (FUNC6(entry->d_name, wildcard_ptr, 1) != MZ_OK))
            continue;

        err = FUNC14(handle, full_path, root_path, include_path, recursive);
        if (err != MZ_OK)
            return err;
    }

    FUNC0(dir);
    return MZ_OK;
}