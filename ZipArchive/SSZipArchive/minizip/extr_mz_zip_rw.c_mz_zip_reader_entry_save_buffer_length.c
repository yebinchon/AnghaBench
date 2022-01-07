
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* file_info; } ;
typedef TYPE_2__ mz_zip_reader ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ uncompressed_size; } ;


 scalar_t__ INT32_MAX ;
 scalar_t__ MZ_OK ;
 int MZ_PARAM_ERROR ;
 scalar_t__ mz_zip_reader_is_open (TYPE_2__*) ;

int32_t mz_zip_reader_entry_save_buffer_length(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;

    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == ((void*)0))
        return MZ_PARAM_ERROR;
    if (reader->file_info->uncompressed_size > INT32_MAX)
        return MZ_PARAM_ERROR;


    return (int32_t)reader->file_info->uncompressed_size;
}
