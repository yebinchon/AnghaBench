
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zipFile ;
typedef int uint32_t ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ mz_compat ;
typedef int int64_t ;


 int ZIP_PARAMERROR ;
 int mz_zip_entry_close_raw (int ,int ,int ) ;

int zipCloseFileInZipRaw64(zipFile file, int64_t uncompressed_size, uint32_t crc32)
{
    mz_compat *compat = (mz_compat *)file;
    if (compat == ((void*)0))
        return ZIP_PARAMERROR;
    return mz_zip_entry_close_raw(compat->handle, uncompressed_size, crc32);
}
