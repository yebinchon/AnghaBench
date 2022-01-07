
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int zip_handle; int * file_info; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ (* mz_stream_write_cb ) (void*,int ,scalar_t__) ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_END_OF_STREAM ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ MZ_WRITE_ERROR ;
 scalar_t__ mz_zip_entry_is_open (int ) ;
 scalar_t__ mz_zip_reader_entry_close (void*) ;
 scalar_t__ mz_zip_reader_entry_open (void*) ;
 scalar_t__ mz_zip_reader_entry_read (void*,int ,int) ;
 scalar_t__ mz_zip_reader_is_open (TYPE_1__*) ;

int32_t mz_zip_reader_entry_save_process(void *handle, void *stream, mz_stream_write_cb write_cb)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    int32_t read = 0;
    int32_t written = 0;


    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == ((void*)0))
        return MZ_PARAM_ERROR;
    if (write_cb == ((void*)0))
        return MZ_PARAM_ERROR;


    if (mz_zip_entry_is_open(reader->zip_handle) != MZ_OK)
        err = mz_zip_reader_entry_open(handle);

    if (err != MZ_OK)
        return err;


    read = mz_zip_reader_entry_read(handle, reader->buffer, sizeof(reader->buffer));

    if (read == 0)
    {

        err = mz_zip_reader_entry_close(handle);
        if (err != MZ_OK)
            return err;

        return MZ_END_OF_STREAM;
    }

    if (read > 0)
    {

        written = write_cb(stream, reader->buffer, read);
        if (written != read)
            return MZ_WRITE_ERROR;
    }

    return read;
}
