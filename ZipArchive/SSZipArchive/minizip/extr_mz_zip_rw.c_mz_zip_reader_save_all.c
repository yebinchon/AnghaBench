
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int utf8_name ;
typedef int uint8_t ;
typedef int resolved_name ;
typedef int path ;
struct TYPE_4__ {scalar_t__ encoding; TYPE_1__* file_info; } ;
typedef TYPE_2__ mz_zip_reader ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {char* filename; int flag; } ;


 scalar_t__ MZ_END_OF_LIST ;
 scalar_t__ MZ_OK ;
 int MZ_ZIP_FLAG_UTF8 ;
 int * mz_os_utf8_string_create (char*,scalar_t__) ;
 int mz_os_utf8_string_delete (int **) ;
 int mz_path_combine (char*,char const*,int) ;
 scalar_t__ mz_path_resolve (char*,char*,int) ;
 scalar_t__ mz_zip_reader_entry_save_file (void*,char*) ;
 scalar_t__ mz_zip_reader_goto_first_entry (void*) ;
 scalar_t__ mz_zip_reader_goto_next_entry (void*) ;
 int strncpy (char*,char*,int) ;

int32_t mz_zip_reader_save_all(void *handle, const char *destination_dir)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    uint8_t *utf8_string = ((void*)0);
    char path[512];
    char utf8_name[256];
    char resolved_name[256];

    err = mz_zip_reader_goto_first_entry(handle);

    if (err == MZ_END_OF_LIST)
        return err;

    while (err == MZ_OK)
    {

        path[0] = 0;

        strncpy(utf8_name, reader->file_info->filename, sizeof(utf8_name) - 1);
        utf8_name[sizeof(utf8_name) - 1] = 0;

        if ((reader->encoding > 0) && (reader->file_info->flag & MZ_ZIP_FLAG_UTF8) == 0)
        {
            utf8_string = mz_os_utf8_string_create(reader->file_info->filename, reader->encoding);
            if (utf8_string)
            {
                strncpy(utf8_name, (char *)utf8_string, sizeof(utf8_name) - 1);
                utf8_name[sizeof(utf8_name) - 1] = 0;
                mz_os_utf8_string_delete(&utf8_string);
            }
        }

        err = mz_path_resolve(utf8_name, resolved_name, sizeof(resolved_name));
        if (err != MZ_OK)
            break;

        if (destination_dir != ((void*)0))
            mz_path_combine(path, destination_dir, sizeof(path));

        mz_path_combine(path, resolved_name, sizeof(path));


        err = mz_zip_reader_entry_save_file(handle, path);

        if (err == MZ_OK)
            err = mz_zip_reader_goto_next_entry(handle);
    }

    if (err == MZ_END_OF_LIST)
        return MZ_OK;

    return err;
}
