
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zipFile ;
typedef int uint16_t ;
struct TYPE_2__ {int * handle; } ;
typedef TYPE_1__ mz_compat ;
typedef int int32_t ;


 int MZ_OK ;
 int ZIP_PARAMERROR ;
 int mz_zip_close (int *) ;
 int mz_zip_delete (int **) ;
 int mz_zip_set_comment (int *,char const*) ;
 int mz_zip_set_version_madeby (int *,int ) ;

int zipClose2_MZ(zipFile file, const char *global_comment, uint16_t version_madeby)
{
    mz_compat *compat = (mz_compat *)file;
    int32_t err = MZ_OK;

    if (compat == ((void*)0))
        return ZIP_PARAMERROR;
    if (compat->handle == ((void*)0))
        return err;

    if (global_comment != ((void*)0))
        mz_zip_set_comment(compat->handle, global_comment);

    mz_zip_set_version_madeby(compat->handle, version_madeby);
    err = mz_zip_close(compat->handle);
    mz_zip_delete(&compat->handle);

    return err;
}
