
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_zip_file ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 scalar_t__ MZ_PARAM_ERROR ;
 int mz_stream_mem_create (void**) ;
 int mz_stream_mem_delete (void**) ;
 scalar_t__ mz_stream_mem_open (void*,int *,int ) ;
 int mz_stream_mem_read ;
 int mz_stream_mem_set_buffer (void*,void*,scalar_t__) ;
 scalar_t__ mz_zip_writer_add_info (void*,void*,int ,int *) ;
 scalar_t__ mz_zip_writer_is_open (void*) ;

int32_t mz_zip_writer_add_buffer(void *handle, void *buf, int32_t len, mz_zip_file *file_info)
{
    void *mem_stream = ((void*)0);
    int32_t err = MZ_OK;

    if (mz_zip_writer_is_open(handle) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (buf == ((void*)0))
        return MZ_PARAM_ERROR;


    mz_stream_mem_create(&mem_stream);
    mz_stream_mem_set_buffer(mem_stream, buf, len);

    err = mz_stream_mem_open(mem_stream, ((void*)0), MZ_OPEN_MODE_READ);
    if (err == MZ_OK)
        err = mz_zip_writer_add_info(handle, mem_stream, mz_stream_mem_read, file_info);

    mz_stream_mem_delete(&mem_stream);
    return err;
}
