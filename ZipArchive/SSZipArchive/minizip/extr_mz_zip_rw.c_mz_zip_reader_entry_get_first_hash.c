
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {TYPE_1__* file_info; } ;
typedef TYPE_2__ mz_zip_reader ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int extrafield_size; scalar_t__ extrafield; } ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 int MZ_ZIP_EXTENSION_HASH ;
 int mz_stream_mem_create (void**) ;
 int mz_stream_mem_delete (void**) ;
 int mz_stream_mem_set_buffer (void*,void*,int ) ;
 scalar_t__ mz_stream_read_uint16 (void*,int *) ;
 scalar_t__ mz_zip_extrafield_find (void*,int ,int *) ;

int32_t mz_zip_reader_entry_get_first_hash(void *handle, uint16_t *algorithm, uint16_t *digest_size)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    void *file_extra_stream = ((void*)0);
    int32_t err = MZ_OK;
    uint16_t cur_algorithm = 0;
    uint16_t cur_digest_size = 0;

    if (reader == ((void*)0) || algorithm == ((void*)0))
        return MZ_PARAM_ERROR;

    mz_stream_mem_create(&file_extra_stream);
    mz_stream_mem_set_buffer(file_extra_stream, (void *)reader->file_info->extrafield,
        reader->file_info->extrafield_size);

    err = mz_zip_extrafield_find(file_extra_stream, MZ_ZIP_EXTENSION_HASH, ((void*)0));
    if (err == MZ_OK)
        err = mz_stream_read_uint16(file_extra_stream, &cur_algorithm);
    if (err == MZ_OK)
        err = mz_stream_read_uint16(file_extra_stream, &cur_digest_size);

    if (algorithm != ((void*)0))
        *algorithm = cur_algorithm;
    if (digest_size != ((void*)0))
        *digest_size = cur_digest_size;

    mz_stream_mem_delete(&file_extra_stream);

    return err;
}
