
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int mz_stream_mem_create (void**) ;
 int mz_stream_mem_delete (void**) ;
 int mz_stream_mem_set_buffer (void*,void*,int ) ;
 int mz_zip_extrafield_find (void*,int ,int *) ;

int32_t mz_zip_extrafield_contains(const uint8_t *extrafield, int32_t extrafield_size,
    uint16_t type, uint16_t *length)
{
    void *file_extra_stream = ((void*)0);
    int32_t err = MZ_OK;

    if (extrafield == ((void*)0) || extrafield_size == 0)
        return MZ_PARAM_ERROR;

    mz_stream_mem_create(&file_extra_stream);
    mz_stream_mem_set_buffer(file_extra_stream, (void *)extrafield, extrafield_size);

    err = mz_zip_extrafield_find(file_extra_stream, type, length);

    mz_stream_mem_delete(&file_extra_stream);

    return err;
}
