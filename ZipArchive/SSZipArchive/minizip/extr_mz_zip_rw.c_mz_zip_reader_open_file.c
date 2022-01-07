
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int split_stream; int buffered_stream; int file_stream; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int mz_stream_buffered_create (int *) ;
 scalar_t__ mz_stream_open (int ,char const*,int ) ;
 int mz_stream_os_create (int *) ;
 int mz_stream_set_base (int ,int ) ;
 int mz_stream_split_create (int *) ;
 int mz_zip_reader_close (void*) ;
 scalar_t__ mz_zip_reader_open (void*,int ) ;

int32_t mz_zip_reader_open_file(void *handle, const char *path)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;


    mz_zip_reader_close(handle);

    mz_stream_os_create(&reader->file_stream);
    mz_stream_buffered_create(&reader->buffered_stream);
    mz_stream_split_create(&reader->split_stream);

    mz_stream_set_base(reader->buffered_stream, reader->file_stream);
    mz_stream_set_base(reader->split_stream, reader->buffered_stream);

    err = mz_stream_open(reader->split_stream, path, MZ_OPEN_MODE_READ);
    if (err == MZ_OK)
        err = mz_zip_reader_open(handle, reader->split_stream);
    return err;
}
