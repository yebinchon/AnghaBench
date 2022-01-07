
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * unzFile ;
struct TYPE_2__ {void* handle; void* stream; } ;
typedef TYPE_1__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_ALLOC (int) ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int mz_zip_create (void**) ;
 int mz_zip_delete (void**) ;
 int mz_zip_goto_first_entry (void*) ;
 scalar_t__ mz_zip_open (void*,void*,int ) ;

unzFile unzOpen_MZ(void *stream)
{
    mz_compat *compat = ((void*)0);
    int32_t err = MZ_OK;
    void *handle = ((void*)0);

    mz_zip_create(&handle);
    err = mz_zip_open(handle, stream, MZ_OPEN_MODE_READ);

    if (err != MZ_OK)
    {
        mz_zip_delete(&handle);
        return ((void*)0);
    }

    compat = (mz_compat *)MZ_ALLOC(sizeof(mz_compat));
    if (compat != ((void*)0))
    {
        compat->handle = handle;
        compat->stream = stream;

        mz_zip_goto_first_entry(compat->handle);
    }
    else
    {
        mz_zip_delete(&handle);
    }

    return (unzFile)compat;
}
