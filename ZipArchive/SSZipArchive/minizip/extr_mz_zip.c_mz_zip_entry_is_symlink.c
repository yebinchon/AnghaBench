
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* linkname; int version_madeby; int external_fa; } ;
struct TYPE_4__ {scalar_t__ entry_scanned; TYPE_1__ file_info; } ;
typedef TYPE_2__ mz_zip ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_EXIST_ERROR ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ mz_zip_attrib_is_symlink (int ,int ) ;

int32_t mz_zip_entry_is_symlink(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;
    if (zip->entry_scanned == 0)
        return MZ_PARAM_ERROR;
    if (mz_zip_attrib_is_symlink(zip->file_info.external_fa, zip->file_info.version_madeby) != MZ_OK)
        return MZ_EXIST_ERROR;
    if (zip->file_info.linkname == ((void*)0) || *zip->file_info.linkname == 0)
        return MZ_EXIST_ERROR;

    return MZ_OK;
}
