
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zip_handle; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_PARAM_ERROR ;
 int mz_zip_get_comment (int ,char const**) ;
 scalar_t__ mz_zip_reader_is_open (TYPE_1__*) ;

int32_t mz_zip_reader_get_comment(void *handle, const char **comment)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (comment == ((void*)0))
        return MZ_PARAM_ERROR;
    return mz_zip_get_comment(reader->zip_handle, comment);
}
