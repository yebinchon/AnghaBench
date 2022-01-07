
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int number_disk_with_CD; int number_entry; scalar_t__ size_comment; } ;
typedef TYPE_1__ unz_global_info64 ;
typedef scalar_t__ unzFile ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {int handle; } ;
typedef TYPE_2__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_EXIST_ERROR ;
 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mz_zip_get_comment (int ,char const**) ;
 scalar_t__ mz_zip_get_disk_number_with_cd (int ,int *) ;
 scalar_t__ mz_zip_get_number_entry (int ,int *) ;
 scalar_t__ strlen (char const*) ;

int unzGetGlobalInfo64(unzFile file, unz_global_info64 *pglobal_info)
{
    mz_compat *compat = (mz_compat *)file;
    const char *comment_ptr = ((void*)0);
    int32_t err = MZ_OK;

    memset(pglobal_info, 0, sizeof(unz_global_info64));
    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    err = mz_zip_get_comment(compat->handle, &comment_ptr);
    if (err == MZ_OK)
        pglobal_info->size_comment = (uint16_t)strlen(comment_ptr);
    if ((err == MZ_OK) || (err == MZ_EXIST_ERROR))
        err = mz_zip_get_number_entry(compat->handle, &pglobal_info->number_entry);
    if (err == MZ_OK)
        err = mz_zip_get_disk_number_with_cd(compat->handle, &pglobal_info->number_disk_with_CD);
    return err;
}
