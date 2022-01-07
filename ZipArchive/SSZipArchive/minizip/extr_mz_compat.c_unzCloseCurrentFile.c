
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ mz_compat ;
typedef int int32_t ;


 int MZ_OK ;
 int UNZ_PARAMERROR ;
 int mz_zip_entry_close (int ) ;

int unzCloseCurrentFile(unzFile file)
{
    mz_compat *compat = (mz_compat *)file;
    int32_t err = MZ_OK;
    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    err = mz_zip_entry_close(compat->handle);
    return err;
}
