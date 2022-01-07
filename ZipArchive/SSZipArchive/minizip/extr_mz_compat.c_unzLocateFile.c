
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ (* unzFileNameComparer ) (scalar_t__,char const*,int ) ;
typedef scalar_t__ unzFile ;
typedef int uint64_t ;
struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ mz_zip_file ;
struct TYPE_5__ {int entry_index; int handle; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ mz_zip_entry_get_info (int ,TYPE_1__**) ;
 scalar_t__ mz_zip_goto_first_entry (int ) ;
 scalar_t__ mz_zip_goto_next_entry (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

int unzLocateFile(unzFile file, const char *filename, unzFileNameComparer filename_compare_func)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = ((void*)0);
    uint64_t preserve_index = 0;
    int32_t err = MZ_OK;
    int32_t result = 0;

    if (compat == ((void*)0))
        return UNZ_PARAMERROR;

    preserve_index = compat->entry_index;

    err = mz_zip_goto_first_entry(compat->handle);
    while (err == MZ_OK)
    {
        err = mz_zip_entry_get_info(compat->handle, &file_info);
        if (err != MZ_OK)
            break;

        if (filename_compare_func != ((void*)0))
            result = filename_compare_func(file, filename, file_info->filename);
        else
            result = strcmp(filename, file_info->filename);

        if (result == 0)
            return MZ_OK;

        err = mz_zip_goto_next_entry(compat->handle);
    }

    compat->entry_index = preserve_index;
    return err;
}
