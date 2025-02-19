
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_4__ {scalar_t__ compression_method; scalar_t__ compressed_size; } ;
typedef TYPE_1__ mz_zip_file ;
struct TYPE_5__ {scalar_t__ total_out; scalar_t__ entry_pos; int handle; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_COMPRESS_METHOD_STORE ;
 scalar_t__ MZ_OK ;
 int MZ_SEEK_SET ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int UNZ_ERRNO ;
 int UNZ_PARAMERROR ;
 scalar_t__ mz_stream_seek (void*,scalar_t__,int ) ;
 scalar_t__ mz_zip_entry_get_info (int ,TYPE_1__**) ;
 scalar_t__ mz_zip_get_stream (int ,void**) ;

int unzSeek64(unzFile file, int64_t offset, int origin)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = ((void*)0);
    int64_t position = 0;
    int32_t err = MZ_OK;
    void *stream = ((void*)0);

    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    err = mz_zip_entry_get_info(compat->handle, &file_info);
    if (err != MZ_OK)
        return err;
    if (file_info->compression_method != MZ_COMPRESS_METHOD_STORE)
        return UNZ_ERRNO;

    if (origin == SEEK_SET)
        position = offset;
    else if (origin == SEEK_CUR)
        position = compat->total_out + offset;
    else if (origin == SEEK_END)
        position = (int64_t)file_info->compressed_size + offset;
    else
        return UNZ_PARAMERROR;

    if (position > (int64_t)file_info->compressed_size)
        return UNZ_PARAMERROR;

    err = mz_zip_get_stream(compat->handle, &stream);
    if (err == MZ_OK)
        err = mz_stream_seek(stream, compat->entry_pos + position, MZ_SEEK_SET);
    if (err == MZ_OK)
        compat->total_out = position;
    return err;
}
