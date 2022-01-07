
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_10__ {int version_madeby; int external_fa; } ;
struct TYPE_11__ {int raw; TYPE_1__ file_info; } ;
typedef TYPE_2__ mz_zip_writer ;
struct TYPE_12__ {int flag; } ;
typedef TYPE_3__ mz_zip_file ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 int MZ_ZIP_FLAG_DATA_DESCRIPTOR ;
 scalar_t__ mz_zip_attrib_is_dir (int ,int ) ;
 int mz_zip_entry_close (void*) ;
 scalar_t__ mz_zip_entry_is_open (void*) ;
 int mz_zip_entry_read ;
 scalar_t__ mz_zip_entry_read_close (void*,int *,int *,int *) ;
 scalar_t__ mz_zip_entry_read_open (void*,int,int *) ;
 scalar_t__ mz_zip_entry_write_close (void*,int ,int ,int ) ;
 scalar_t__ mz_zip_reader_entry_get_info (void*,TYPE_3__**) ;
 int mz_zip_reader_get_zip_handle (void*,void**) ;
 scalar_t__ mz_zip_reader_is_open (void*) ;
 scalar_t__ mz_zip_writer_add (TYPE_2__*,void*,int ) ;
 scalar_t__ mz_zip_writer_entry_open (TYPE_2__*,TYPE_3__*) ;
 int mz_zip_writer_get_zip_handle (TYPE_2__*,void**) ;
 scalar_t__ mz_zip_writer_is_open (TYPE_2__*) ;

int32_t mz_zip_writer_copy_from_reader(void *handle, void *reader)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    mz_zip_file *file_info = ((void*)0);
    int64_t compressed_size = 0;
    int64_t uncompressed_size = 0;
    uint32_t crc32 = 0;
    int32_t err = MZ_OK;
    uint8_t original_raw = 0;
    void *reader_zip_handle = ((void*)0);
    void *writer_zip_handle = ((void*)0);


    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (mz_zip_writer_is_open(writer) != MZ_OK)
        return MZ_PARAM_ERROR;

    err = mz_zip_reader_entry_get_info(reader, &file_info);

    if (err != MZ_OK)
        return err;

    mz_zip_reader_get_zip_handle(reader, &reader_zip_handle);
    mz_zip_writer_get_zip_handle(writer, &writer_zip_handle);


    err = mz_zip_entry_read_open(reader_zip_handle, 1, ((void*)0));

    if (err == MZ_OK)
    {

        original_raw = writer->raw;
        writer->raw = 1;

        err = mz_zip_writer_entry_open(writer, file_info);

        if ((err == MZ_OK) &&
            (mz_zip_attrib_is_dir(writer->file_info.external_fa, writer->file_info.version_madeby) != MZ_OK))
        {
            err = mz_zip_writer_add(writer, reader_zip_handle, mz_zip_entry_read);
        }

        if ((err == MZ_OK) && (file_info->flag & MZ_ZIP_FLAG_DATA_DESCRIPTOR))
        {
            err = mz_zip_entry_read_close(reader_zip_handle, &crc32, &compressed_size, &uncompressed_size);
            if (err == MZ_OK)
                err = mz_zip_entry_write_close(writer_zip_handle, crc32, compressed_size, uncompressed_size);
        }

        if (mz_zip_entry_is_open(reader_zip_handle) == MZ_OK)
            mz_zip_entry_close(reader_zip_handle);

        if (mz_zip_entry_is_open(writer_zip_handle) == MZ_OK)
            mz_zip_entry_close(writer_zip_handle);

        writer->raw = original_raw;
    }

    return err;
}
