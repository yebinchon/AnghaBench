
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * zipFile ;
struct TYPE_2__ {void* stream; void* handle; } ;
typedef TYPE_1__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_ALLOC (int) ;
 scalar_t__ MZ_OK ;
 int mz_zip_create (void**) ;
 int mz_zip_delete (void**) ;
 int mz_zip_get_comment (void*,char const**) ;
 scalar_t__ mz_zip_open (void*,void*,scalar_t__) ;
 scalar_t__ zipConvertAppendToStreamMode (int) ;

zipFile zipOpen_MZ(void *stream, int append, const char **globalcomment)
{
    mz_compat *compat = ((void*)0);
    int32_t err = MZ_OK;
    int32_t mode = zipConvertAppendToStreamMode(append);
    void *handle = ((void*)0);

    mz_zip_create(&handle);
    err = mz_zip_open(handle, stream, mode);

    if (err != MZ_OK)
    {
        mz_zip_delete(&handle);
        return ((void*)0);
    }

    if (globalcomment != ((void*)0))
        mz_zip_get_comment(handle, globalcomment);

    compat = (mz_compat *)MZ_ALLOC(sizeof(mz_compat));
    if (compat != ((void*)0))
    {
        compat->handle = handle;
        compat->stream = stream;
    }
    else
    {
        mz_zip_delete(&handle);
    }

    return (zipFile)compat;
}
