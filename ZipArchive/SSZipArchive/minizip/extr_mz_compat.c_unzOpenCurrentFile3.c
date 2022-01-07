
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
typedef int uint8_t ;
struct TYPE_4__ {int compression_method; int flag; } ;
typedef TYPE_1__ mz_zip_file ;
struct TYPE_5__ {int entry_pos; int handle; scalar_t__ total_out; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;



 int UNZ_PARAMERROR ;
 int mz_stream_tell (void*) ;
 scalar_t__ mz_zip_entry_get_info (int ,TYPE_1__**) ;
 scalar_t__ mz_zip_entry_read_open (int ,int ,char const*) ;
 scalar_t__ mz_zip_get_stream (int ,void**) ;

int unzOpenCurrentFile3(unzFile file, int *method, int *level, int raw, const char *password)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = ((void*)0);
    int32_t err = MZ_OK;
    void *stream = ((void*)0);

    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    if (method != ((void*)0))
        *method = 0;
    if (level != ((void*)0))
        *level = 0;

    compat->total_out = 0;
    err = mz_zip_entry_read_open(compat->handle, (uint8_t)raw, password);
    if (err == MZ_OK)
        err = mz_zip_entry_get_info(compat->handle, &file_info);
    if (err == MZ_OK)
    {
        if (method != ((void*)0))
        {
            *method = file_info->compression_method;
        }

        if (level != ((void*)0))
        {
            *level = 6;
            switch (file_info->flag & 0x06)
            {
            case 128:
                *level = 1;
                break;
            case 130:
                *level = 2;
                break;
            case 129:
                *level = 9;
                break;
            }
        }
    }
    if (err == MZ_OK)
        err = mz_zip_get_stream(compat->handle, &stream);
    if (err == MZ_OK)
        compat->entry_pos = mz_stream_tell(stream);
    return err;
}
