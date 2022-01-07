
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* comment; } ;
typedef TYPE_1__ mz_zip ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_get_comment(void *handle, const char **comment)
{
    mz_zip *zip = (mz_zip *)handle;
    if (zip == ((void*)0) || comment == ((void*)0))
        return MZ_PARAM_ERROR;
    if (zip->comment == ((void*)0))
        return MZ_EXIST_ERROR;
    *comment = zip->comment;
    return MZ_OK;
}
