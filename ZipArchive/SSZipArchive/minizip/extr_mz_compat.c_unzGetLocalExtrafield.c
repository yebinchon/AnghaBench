
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_4__ {scalar_t__ extrafield_size; int extrafield; } ;
typedef TYPE_1__ mz_zip_file ;
struct TYPE_5__ {int handle; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int32_t ;


 unsigned int INT32_MAX ;
 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 int memcpy (void*,int ,scalar_t__) ;
 scalar_t__ mz_zip_entry_get_local_info (int ,TYPE_1__**) ;

int unzGetLocalExtrafield(unzFile file, void *buf, unsigned int len)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = ((void*)0);
    int32_t err = MZ_OK;
    int32_t bytes_to_copy = 0;

    if (compat == ((void*)0) || buf == ((void*)0) || len >= INT32_MAX)
        return UNZ_PARAMERROR;

    err = mz_zip_entry_get_local_info(compat->handle, &file_info);
    if (err != MZ_OK)
        return err;

    bytes_to_copy = (int32_t)len;
    if (bytes_to_copy > file_info->extrafield_size)
        bytes_to_copy = file_info->extrafield_size;

    memcpy(buf, file_info->extrafield, bytes_to_copy);
    return MZ_OK;
}
