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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int cd_zipped; int /*<<< orphan*/  entry_verified; int /*<<< orphan*/  cd_verified; int /*<<< orphan*/  zip_handle; } ;
typedef  TYPE_1__ mz_zip_reader ;
struct TYPE_5__ {scalar_t__ uncompressed_size; int /*<<< orphan*/  extrafield_size; scalar_t__ extrafield; int /*<<< orphan*/  filename; } ;
typedef  TYPE_2__ mz_zip_file ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_CREATE ; 
 int /*<<< orphan*/  MZ_SEEK_SET ; 
 int /*<<< orphan*/  MZ_ZIP_CD_FILENAME ; 
 int /*<<< orphan*/  MZ_ZIP_EXTENSION_CDCD ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC10 (void*,TYPE_2__**) ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/  mz_zip_reader_entry_read ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t FUNC16(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    mz_zip_file *cd_info = NULL;
    void *cd_mem_stream = NULL;
    void *new_cd_stream = NULL;
    void *file_extra_stream = NULL;
    uint64_t number_entry = 0;
    int32_t err = MZ_OK;


    err = FUNC12(handle);
    if (err != MZ_OK)
        return err;
    err = FUNC10(handle, &cd_info);
    if (err != MZ_OK)
        return err;

    if (FUNC15(cd_info->filename, MZ_ZIP_CD_FILENAME) != 0)
        return FUNC12(handle);

    err = FUNC11(handle);
    if (err != MZ_OK)
        return err;

    FUNC1(&file_extra_stream);
    FUNC5(file_extra_stream, (void *)cd_info->extrafield, cd_info->extrafield_size);

    err = FUNC8(file_extra_stream, MZ_ZIP_EXTENSION_CDCD, NULL);
    if (err == MZ_OK)
        err = FUNC6(file_extra_stream, &number_entry);

    FUNC2(&file_extra_stream);

    if (err != MZ_OK)
        return err;

    FUNC9(reader->zip_handle, &cd_mem_stream);
    if (FUNC3(cd_mem_stream) != MZ_OK)
        FUNC4(cd_mem_stream, NULL, MZ_OPEN_MODE_CREATE);

    err = FUNC7(cd_mem_stream, 0, MZ_SEEK_SET);
    if (err == MZ_OK)
        err = FUNC0(cd_mem_stream, NULL, handle, mz_zip_reader_entry_read,
            (int32_t)cd_info->uncompressed_size);

    if (err == MZ_OK)
    {
        reader->cd_zipped = 1;

        FUNC13(reader->zip_handle, 0, cd_mem_stream);
        FUNC14(reader->zip_handle, number_entry);

        err = FUNC12(handle);
    }

    reader->cd_verified = reader->entry_verified;

    FUNC2(&new_cd_stream);
    return err;
}