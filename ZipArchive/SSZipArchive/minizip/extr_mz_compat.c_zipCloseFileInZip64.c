
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zipFile ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ mz_compat ;


 int ZIP_PARAMERROR ;
 int mz_zip_entry_close (int ) ;

int zipCloseFileInZip64(zipFile file)
{
    mz_compat *compat = (mz_compat *)file;
    if (compat == ((void*)0))
        return ZIP_PARAMERROR;
    return mz_zip_entry_close(compat->handle);
}
