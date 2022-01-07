
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_stream; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_MEM_ERROR ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_CREATE ;
 int MZ_OPEN_MODE_READ ;
 int MZ_SEEK_END ;
 int MZ_SEEK_SET ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ mz_stream_copy (int ,void*,scalar_t__) ;
 int mz_stream_mem_create (int *) ;
 int mz_stream_mem_open (int ,int *,int ) ;
 int mz_stream_mem_set_grow_size (int ,scalar_t__) ;
 int mz_stream_os_close (void*) ;
 int mz_stream_os_create (void**) ;
 int mz_stream_os_delete (void**) ;
 scalar_t__ mz_stream_os_open (void*,char const*,int ) ;
 int mz_stream_os_seek (void*,int ,int ) ;
 scalar_t__ mz_stream_os_tell (void*) ;
 int mz_zip_reader_close (void*) ;
 scalar_t__ mz_zip_reader_open (void*,int ) ;

int32_t mz_zip_reader_open_file_in_memory(void *handle, const char *path)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    void *file_stream = ((void*)0);
    int64_t file_size = 0;
    int32_t err = 0;


    mz_zip_reader_close(handle);

    mz_stream_os_create(&file_stream);

    err = mz_stream_os_open(file_stream, path, MZ_OPEN_MODE_READ);

    if (err != MZ_OK)
    {
        mz_stream_os_delete(&file_stream);
        mz_zip_reader_close(handle);
        return err;
    }

    mz_stream_os_seek(file_stream, 0, MZ_SEEK_END);
    file_size = mz_stream_os_tell(file_stream);
    mz_stream_os_seek(file_stream, 0, MZ_SEEK_SET);

    if ((file_size <= 0) || (file_size > UINT32_MAX))
    {


        mz_stream_os_close(file_stream);
        mz_stream_os_delete(&file_stream);
        mz_zip_reader_close(handle);
        return MZ_MEM_ERROR;
    }

    mz_stream_mem_create(&reader->mem_stream);
    mz_stream_mem_set_grow_size(reader->mem_stream, (int32_t)file_size);
    mz_stream_mem_open(reader->mem_stream, ((void*)0), MZ_OPEN_MODE_CREATE);

    err = mz_stream_copy(reader->mem_stream, file_stream, (int32_t)file_size);

    mz_stream_os_close(file_stream);
    mz_stream_os_delete(&file_stream);

    if (err == MZ_OK)
        err = mz_zip_reader_open(handle, reader->mem_stream);
    if (err != MZ_OK)
        mz_zip_reader_close(handle);

    return err;
}
