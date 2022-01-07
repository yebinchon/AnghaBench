
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mem_stream; int * file_stream; int * buffered_stream; int * split_stream; int * zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int int32_t ;


 int MZ_OK ;
 int mz_stream_buffered_delete (int **) ;
 int mz_stream_mem_close (int *) ;
 int mz_stream_mem_delete (int **) ;
 int mz_stream_os_delete (int **) ;
 int mz_stream_split_close (int *) ;
 int mz_stream_split_delete (int **) ;
 int mz_zip_close (int *) ;
 int mz_zip_delete (int **) ;

int32_t mz_zip_reader_close(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    if (reader->zip_handle != ((void*)0))
    {
        err = mz_zip_close(reader->zip_handle);
        mz_zip_delete(&reader->zip_handle);
    }

    if (reader->split_stream != ((void*)0))
    {
        mz_stream_split_close(reader->split_stream);
        mz_stream_split_delete(&reader->split_stream);
    }

    if (reader->buffered_stream != ((void*)0))
        mz_stream_buffered_delete(&reader->buffered_stream);

    if (reader->file_stream != ((void*)0))
        mz_stream_os_delete(&reader->file_stream);

    if (reader->mem_stream != ((void*)0))
    {
        mz_stream_mem_close(reader->mem_stream);
        mz_stream_mem_delete(&reader->mem_stream);
    }

    return err;
}
