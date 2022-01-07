
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mz_zip ;


 scalar_t__ MZ_ALLOC (int) ;
 int memset (void*,int ,int) ;

void *mz_zip_create(void **handle)
{
    mz_zip *zip = ((void*)0);

    zip = (mz_zip *)MZ_ALLOC(sizeof(mz_zip));
    if (zip != ((void*)0))
        memset(zip, 0, sizeof(mz_zip));
    if (handle != ((void*)0))
        *handle = zip;

    return zip;
}
