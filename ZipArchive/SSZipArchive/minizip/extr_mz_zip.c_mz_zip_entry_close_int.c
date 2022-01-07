
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ entry_opened; int * compress_stream; int * crypt_stream; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_OK ;
 int mz_stream_delete (int **) ;

__attribute__((used)) static int32_t mz_zip_entry_close_int(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip->crypt_stream != ((void*)0))
        mz_stream_delete(&zip->crypt_stream);
    zip->crypt_stream = ((void*)0);
    if (zip->compress_stream != ((void*)0))
        mz_stream_delete(&zip->compress_stream);
    zip->compress_stream = ((void*)0);

    zip->entry_opened = 0;

    return MZ_OK;
}
