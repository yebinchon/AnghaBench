
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pattern_ignore_case; int pattern; } ;
typedef TYPE_1__ mz_zip_reader ;
struct TYPE_5__ {int filename; } ;
typedef TYPE_2__ mz_zip_file ;
typedef int int32_t ;


 int MZ_UNUSED (void*) ;
 int mz_path_compare_wc (int ,int ,int ) ;

__attribute__((used)) static int32_t mz_zip_reader_locate_entry_cb(void *handle, void *userdata, mz_zip_file *file_info)
{
    mz_zip_reader *reader = (mz_zip_reader *)userdata;
    int32_t result = 0;
    MZ_UNUSED(handle);
    result = mz_path_compare_wc(file_info->filename, reader->pattern, reader->pattern_ignore_case);
    return result;
}
