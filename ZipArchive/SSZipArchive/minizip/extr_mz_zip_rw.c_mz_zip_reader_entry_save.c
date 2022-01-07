
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ progress_cb_interval_ms; int * file_info; int progress_userdata; int (* progress_cb ) (void*,int ,int *,scalar_t__) ;} ;
typedef TYPE_1__ mz_zip_reader ;
typedef int mz_stream_write_cb ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_END_OF_STREAM ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ mz_os_ms_time () ;
 scalar_t__ mz_zip_reader_entry_save_process (void*,void*,int ) ;
 scalar_t__ mz_zip_reader_is_open (TYPE_1__*) ;
 int stub1 (void*,int ,int *,scalar_t__) ;
 int stub2 (void*,int ,int *,scalar_t__) ;
 int stub3 (void*,int ,int *,scalar_t__) ;

int32_t mz_zip_reader_entry_save(void *handle, void *stream, mz_stream_write_cb write_cb)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    uint64_t current_time = 0;
    uint64_t update_time = 0;
    int64_t current_pos = 0;
    int64_t update_pos = 0;
    int32_t err = MZ_OK;
    int32_t written = 0;

    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == ((void*)0))
        return MZ_PARAM_ERROR;


    if (reader->progress_cb != ((void*)0))
        reader->progress_cb(handle, reader->progress_userdata, reader->file_info, current_pos);


    while (err == MZ_OK)
    {
        written = mz_zip_reader_entry_save_process(handle, stream, write_cb);
        if (written == MZ_END_OF_STREAM)
            break;
        if (written > 0)
            current_pos += written;
        if (written < 0)
            err = written;


        current_time = mz_os_ms_time();
        if ((current_time - update_time) > reader->progress_cb_interval_ms)
        {
            if (reader->progress_cb != ((void*)0))
                reader->progress_cb(handle, reader->progress_userdata, reader->file_info, current_pos);

            update_pos = current_pos;
            update_time = current_time;
        }
    }


    if (reader->progress_cb != ((void*)0) && update_pos != current_pos)
        reader->progress_cb(handle, reader->progress_userdata, reader->file_info, current_pos);

    return err;
}
