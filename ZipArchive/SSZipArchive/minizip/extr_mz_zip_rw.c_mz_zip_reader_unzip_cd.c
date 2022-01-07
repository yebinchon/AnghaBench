
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int cd_zipped; int entry_verified; int cd_verified; int zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
struct TYPE_5__ {scalar_t__ uncompressed_size; int extrafield_size; scalar_t__ extrafield; int filename; } ;
typedef TYPE_2__ mz_zip_file ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_CREATE ;
 int MZ_SEEK_SET ;
 int MZ_ZIP_CD_FILENAME ;
 int MZ_ZIP_EXTENSION_CDCD ;
 scalar_t__ mz_stream_copy_stream (void*,int *,void*,int ,scalar_t__) ;
 int mz_stream_mem_create (void**) ;
 int mz_stream_mem_delete (void**) ;
 scalar_t__ mz_stream_mem_is_open (void*) ;
 int mz_stream_mem_open (void*,int *,int ) ;
 int mz_stream_mem_set_buffer (void*,void*,int ) ;
 scalar_t__ mz_stream_read_uint64 (void*,int *) ;
 scalar_t__ mz_stream_seek (void*,int ,int ) ;
 scalar_t__ mz_zip_extrafield_find (void*,int ,int *) ;
 int mz_zip_get_cd_mem_stream (int ,void**) ;
 scalar_t__ mz_zip_reader_entry_get_info (void*,TYPE_2__**) ;
 scalar_t__ mz_zip_reader_entry_open (void*) ;
 int mz_zip_reader_entry_read ;
 scalar_t__ mz_zip_reader_goto_first_entry (void*) ;
 int mz_zip_set_cd_stream (int ,int ,void*) ;
 int mz_zip_set_number_entry (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int32_t mz_zip_reader_unzip_cd(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    mz_zip_file *cd_info = ((void*)0);
    void *cd_mem_stream = ((void*)0);
    void *new_cd_stream = ((void*)0);
    void *file_extra_stream = ((void*)0);
    uint64_t number_entry = 0;
    int32_t err = MZ_OK;


    err = mz_zip_reader_goto_first_entry(handle);
    if (err != MZ_OK)
        return err;
    err = mz_zip_reader_entry_get_info(handle, &cd_info);
    if (err != MZ_OK)
        return err;

    if (strcmp(cd_info->filename, MZ_ZIP_CD_FILENAME) != 0)
        return mz_zip_reader_goto_first_entry(handle);

    err = mz_zip_reader_entry_open(handle);
    if (err != MZ_OK)
        return err;

    mz_stream_mem_create(&file_extra_stream);
    mz_stream_mem_set_buffer(file_extra_stream, (void *)cd_info->extrafield, cd_info->extrafield_size);

    err = mz_zip_extrafield_find(file_extra_stream, MZ_ZIP_EXTENSION_CDCD, ((void*)0));
    if (err == MZ_OK)
        err = mz_stream_read_uint64(file_extra_stream, &number_entry);

    mz_stream_mem_delete(&file_extra_stream);

    if (err != MZ_OK)
        return err;

    mz_zip_get_cd_mem_stream(reader->zip_handle, &cd_mem_stream);
    if (mz_stream_mem_is_open(cd_mem_stream) != MZ_OK)
        mz_stream_mem_open(cd_mem_stream, ((void*)0), MZ_OPEN_MODE_CREATE);

    err = mz_stream_seek(cd_mem_stream, 0, MZ_SEEK_SET);
    if (err == MZ_OK)
        err = mz_stream_copy_stream(cd_mem_stream, ((void*)0), handle, mz_zip_reader_entry_read,
            (int32_t)cd_info->uncompressed_size);

    if (err == MZ_OK)
    {
        reader->cd_zipped = 1;

        mz_zip_set_cd_stream(reader->zip_handle, 0, cd_mem_stream);
        mz_zip_set_number_entry(reader->zip_handle, number_entry);

        err = mz_zip_reader_goto_first_entry(handle);
    }

    reader->cd_verified = reader->entry_verified;

    mz_stream_mem_delete(&new_cd_stream);
    return err;
}
