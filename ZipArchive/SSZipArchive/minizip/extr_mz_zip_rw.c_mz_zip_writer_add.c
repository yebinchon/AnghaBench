
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ progress_cb_interval_ms; int file_info; int progress_userdata; int (* progress_cb ) (void*,int ,int *,scalar_t__) ;} ;
typedef TYPE_1__ mz_zip_writer ;
typedef int mz_stream_read_cb ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_END_OF_STREAM ;
 scalar_t__ MZ_OK ;
 scalar_t__ mz_os_ms_time () ;
 scalar_t__ mz_zip_writer_add_process (void*,void*,int ) ;
 int stub1 (void*,int ,int *,scalar_t__) ;
 int stub2 (void*,int ,int *,scalar_t__) ;
 int stub3 (void*,int ,int *,scalar_t__) ;

int32_t mz_zip_writer_add(void *handle, void *stream, mz_stream_read_cb read_cb)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    uint64_t current_time = 0;
    uint64_t update_time = 0;
    int64_t current_pos = 0;
    int64_t update_pos = 0;
    int32_t err = MZ_OK;
    int32_t written = 0;


    if (writer->progress_cb != ((void*)0))
        writer->progress_cb(handle, writer->progress_userdata, &writer->file_info, current_pos);


    while (err == MZ_OK)
    {
        written = mz_zip_writer_add_process(handle, stream, read_cb);
        if (written == MZ_END_OF_STREAM)
            break;
        if (written > 0)
            current_pos += written;
        if (written < 0)
            err = written;


        current_time = mz_os_ms_time();
        if ((current_time - update_time) > writer->progress_cb_interval_ms)
        {
            if (writer->progress_cb != ((void*)0))
                writer->progress_cb(handle, writer->progress_userdata, &writer->file_info, current_pos);

            update_pos = current_pos;
            update_time = current_time;
        }
    }


    if (writer->progress_cb != ((void*)0) && update_pos != current_pos)
        writer->progress_cb(handle, writer->progress_userdata, &writer->file_info, current_pos);

    return err;
}
