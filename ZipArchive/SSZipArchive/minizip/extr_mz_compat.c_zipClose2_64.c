
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zipFile ;
typedef int uint16_t ;
struct TYPE_3__ {int * stream; int * handle; } ;
typedef TYPE_1__ mz_compat ;
typedef int int32_t ;


 int MZ_FREE (TYPE_1__*) ;
 int MZ_OK ;
 int mz_stream_close (int *) ;
 int mz_stream_delete (int **) ;
 int zipClose2_MZ (scalar_t__,char const*,int ) ;

int zipClose2_64(zipFile file, const char *global_comment, uint16_t version_madeby)
{
    mz_compat *compat = (mz_compat *)file;
    int32_t err = MZ_OK;

    if (compat->handle != ((void*)0))
        err = zipClose2_MZ(file, global_comment, version_madeby);

    if (compat->stream != ((void*)0))
    {
        mz_stream_close(compat->stream);
        mz_stream_delete(&compat->stream);
    }

    MZ_FREE(compat);

    return err;
}
