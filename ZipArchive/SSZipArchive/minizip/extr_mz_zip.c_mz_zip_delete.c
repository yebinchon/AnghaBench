
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_zip ;


 int MZ_FREE (int *) ;

void mz_zip_delete(void **handle)
{
    mz_zip *zip = ((void*)0);
    if (handle == ((void*)0))
        return;
    zip = (mz_zip *)*handle;
    if (zip != ((void*)0))
    {
        MZ_FREE(zip);
    }
    *handle = ((void*)0);
}
