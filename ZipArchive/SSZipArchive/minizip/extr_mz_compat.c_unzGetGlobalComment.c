
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ mz_zip_get_comment (int ,char const**) ;
 int strncpy (char*,char const*,scalar_t__) ;

int unzGetGlobalComment(unzFile file, char *comment, uint16_t comment_size)
{
    mz_compat *compat = (mz_compat *)file;
    const char *comment_ptr = ((void*)0);
    int32_t err = MZ_OK;

    if (comment == ((void*)0) || comment_size == 0)
        return UNZ_PARAMERROR;
    err = mz_zip_get_comment(compat->handle, &comment_ptr);
    if (err == MZ_OK)
    {
        strncpy(comment, comment_ptr, comment_size - 1);
        comment[comment_size - 1] = 0;
    }
    return err;
}
