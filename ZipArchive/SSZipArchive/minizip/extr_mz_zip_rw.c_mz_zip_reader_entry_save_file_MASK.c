#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pathwfs ;
struct TYPE_5__ {scalar_t__ (* overwrite_cb ) (void*,int /*<<< orphan*/ ,TYPE_2__*,char*) ;TYPE_2__* file_info; int /*<<< orphan*/  zip_handle; int /*<<< orphan*/  overwrite_userdata; int /*<<< orphan*/  entry_userdata; int /*<<< orphan*/  (* entry_cb ) (void*,int /*<<< orphan*/ ,TYPE_2__*,char*) ;} ;
typedef  TYPE_1__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  directory ;
struct TYPE_6__ {int /*<<< orphan*/  external_fa; int /*<<< orphan*/  version_madeby; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  accessed_date; int /*<<< orphan*/  modified_date; int /*<<< orphan*/  linkname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_CREATE ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  MZ_PATH_SLASH_UNIX ; 
 int /*<<< orphan*/  MZ_VERSION_MADEBY_HOST_SYSTEM ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void**) ; 
 int /*<<< orphan*/  FUNC13 (void**) ; 
 scalar_t__ FUNC14 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mz_stream_write ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC21 (void*,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 scalar_t__ FUNC22 (void*,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 

int32_t FUNC23(void *handle, const char *path)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    void *stream = NULL;
    uint32_t target_attrib = 0;
    int32_t err_attrib = 0;
    int32_t err = MZ_OK;
    int32_t err_cb = MZ_OK;
    char pathwfs[512];
    char directory[512];

    if (FUNC19(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == NULL || path == NULL)
        return MZ_PARAM_ERROR;

    /* Convert to forward slashes for unix which doesn't like backslashes */
    FUNC20(pathwfs, path, sizeof(pathwfs) - 1);
    pathwfs[sizeof(pathwfs) - 1] = 0;
    FUNC8(pathwfs, MZ_PATH_SLASH_UNIX);

    if (reader->entry_cb != NULL)
        reader->entry_cb(handle, reader->entry_userdata, reader->file_info, pathwfs);

    FUNC20(directory, pathwfs, sizeof(directory) - 1);
    directory[sizeof(directory) - 1] = 0;
    FUNC9(directory);

    /* If it is a directory entry then create a directory instead of writing file */
    if ((FUNC16(reader->zip_handle) == MZ_OK) &&
        (FUNC17(reader->zip_handle) != MZ_OK))
    {
        err = FUNC1(directory);
        return err;
    }

    /* Check if file exists and ask if we want to overwrite */
    if ((FUNC2(pathwfs) == MZ_OK) && (reader->overwrite_cb != NULL))
    {
        err_cb = reader->overwrite_cb(handle, reader->overwrite_userdata, reader->file_info, pathwfs);
        if (err_cb != MZ_OK)
            return err;
        /* We want to overwrite the file so we delete the existing one */
        FUNC7(pathwfs);
    }

    /* If symbolic link then properly construct destination path and link path */
    if (FUNC17(reader->zip_handle) == MZ_OK)
    {
        FUNC10(pathwfs);
        FUNC9(directory);
    }

    /* Create the output directory if it doesn't already exist */
    if (FUNC3(directory) != MZ_OK)
    {
        err = FUNC1(directory);
        if (err != MZ_OK)
            return err;
    }

    /* If it is a symbolic link then create symbolic link instead of writing file */
    if (FUNC17(reader->zip_handle) == MZ_OK)
    {
        FUNC4(pathwfs, reader->file_info->linkname);
        /* Don't check return value because we aren't validating symbolic link target */
        return err;
    }

    /* Create the file on disk so we can save to it */
    FUNC13(&stream);
    err = FUNC14(stream, pathwfs, MZ_OPEN_MODE_CREATE);

    if (err == MZ_OK)
        err = FUNC18(handle, stream, mz_stream_write);

    FUNC11(stream);
    FUNC12(&stream);

    if (err == MZ_OK)
    {
        /* Set the time of the file that has been created */
        FUNC6(pathwfs, reader->file_info->modified_date,
            reader->file_info->accessed_date, reader->file_info->creation_date);
    }

    if (err == MZ_OK)
    {
        /* Set file attributes for the correct system */
        err_attrib = FUNC15(FUNC0(reader->file_info->version_madeby),
            reader->file_info->external_fa, MZ_VERSION_MADEBY_HOST_SYSTEM, &target_attrib);

        if (err_attrib == MZ_OK)
            FUNC5(pathwfs, target_attrib);
    }

    return err;
}