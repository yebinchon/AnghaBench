
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ (* overwrite_cb ) (void*,int ,char const*) ;int split_stream; int buffered_stream; int file_stream; int overwrite_userdata; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef int directory ;


 scalar_t__ MZ_INTERNAL_ERROR ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_OPEN_MODE_APPEND ;
 scalar_t__ MZ_OPEN_MODE_CREATE ;
 scalar_t__ MZ_OPEN_MODE_READWRITE ;
 int MZ_STREAM_PROP_DISK_SIZE ;
 int mz_dir_make (char*) ;
 scalar_t__ mz_os_file_exists (char const*) ;
 int mz_path_remove_filename (char*) ;
 int mz_stream_buffered_create (int *) ;
 scalar_t__ mz_stream_open (int ,char const*,scalar_t__) ;
 int mz_stream_os_create (int *) ;
 int mz_stream_set_base (int ,int ) ;
 int mz_stream_split_create (int *) ;
 int mz_stream_split_set_prop_int64 (int ,int ,int ) ;
 int mz_zip_writer_close (void*) ;
 scalar_t__ mz_zip_writer_open_int (void*,int ,scalar_t__) ;
 int * strchr (char const*,char) ;
 int strncpy (char*,char const*,int) ;
 int * strrchr (char const*,char) ;
 scalar_t__ stub1 (void*,int ,char const*) ;

int32_t mz_zip_writer_open_file(void *handle, const char *path, int64_t disk_size, uint8_t append)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t mode = MZ_OPEN_MODE_READWRITE;
    int32_t err = MZ_OK;
    int32_t err_cb = 0;
    char directory[320];

    mz_zip_writer_close(handle);

    if (mz_os_file_exists(path) != MZ_OK)
    {

        mode |= MZ_OPEN_MODE_CREATE;


        if (strchr(path, '/') != ((void*)0) || strrchr(path, '\\') != ((void*)0))
        {
            strncpy(directory, path, sizeof(directory));
            mz_path_remove_filename(directory);
            if (mz_os_file_exists(directory) != MZ_OK)
                mz_dir_make(directory);
        }
    }
    else if (append)
    {
        mode |= MZ_OPEN_MODE_APPEND;
    }
    else
    {
        if (writer->overwrite_cb != ((void*)0))
            err_cb = writer->overwrite_cb(handle, writer->overwrite_userdata, path);

        if (err_cb == MZ_INTERNAL_ERROR)
            return err;

        if (err_cb == MZ_OK)
            mode |= MZ_OPEN_MODE_CREATE;
        else
            mode |= MZ_OPEN_MODE_APPEND;
    }

    mz_stream_os_create(&writer->file_stream);
    mz_stream_buffered_create(&writer->buffered_stream);
    mz_stream_split_create(&writer->split_stream);

    mz_stream_set_base(writer->buffered_stream, writer->file_stream);
    mz_stream_set_base(writer->split_stream, writer->buffered_stream);

    mz_stream_split_set_prop_int64(writer->split_stream, MZ_STREAM_PROP_DISK_SIZE, disk_size);

    err = mz_stream_open(writer->split_stream, path, mode);
    if (err == MZ_OK)
        err = mz_zip_writer_open_int(handle, writer->split_stream, mode);

    return err;
}
