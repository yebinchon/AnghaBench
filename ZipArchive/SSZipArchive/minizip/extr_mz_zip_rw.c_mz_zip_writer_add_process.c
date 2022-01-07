
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int zip_handle; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef scalar_t__ (* mz_stream_read_cb ) (void*,int ,int) ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_END_OF_STREAM ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ MZ_WRITE_ERROR ;
 scalar_t__ mz_zip_entry_is_open (int ) ;
 scalar_t__ mz_zip_writer_entry_write (void*,int ,scalar_t__) ;
 scalar_t__ mz_zip_writer_is_open (TYPE_1__*) ;

int32_t mz_zip_writer_add_process(void *handle, void *stream, mz_stream_read_cb read_cb)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t read = 0;
    int32_t written = 0;
    int32_t err = MZ_OK;

    if (mz_zip_writer_is_open(writer) != MZ_OK)
        return MZ_PARAM_ERROR;

    if (mz_zip_entry_is_open(writer->zip_handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (read_cb == ((void*)0))
        return MZ_PARAM_ERROR;

    read = read_cb(stream, writer->buffer, sizeof(writer->buffer));
    if (read == 0)
        return MZ_END_OF_STREAM;
    if (read < 0)
    {
        err = read;
        return err;
    }

    written = mz_zip_writer_entry_write(handle, writer->buffer, read);
    if (written != read)
        return MZ_WRITE_ERROR;

    return written;
}
