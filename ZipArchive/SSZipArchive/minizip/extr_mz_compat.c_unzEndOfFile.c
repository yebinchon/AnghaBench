
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_4__ {scalar_t__ uncompressed_size; } ;
typedef TYPE_1__ mz_zip_file ;
struct TYPE_5__ {scalar_t__ total_out; int handle; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ mz_zip_entry_get_info (int ,TYPE_1__**) ;

int unzEndOfFile(unzFile file)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = ((void*)0);
    int32_t err = MZ_OK;

    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    err = mz_zip_entry_get_info(compat->handle, &file_info);
    if (err != MZ_OK)
        return err;
    if (compat->total_out == (int64_t)file_info->uncompressed_size)
        return 1;
    return 0;
}
