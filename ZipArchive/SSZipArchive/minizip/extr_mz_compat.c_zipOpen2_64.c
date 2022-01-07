
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlib_filefunc64_def ;
typedef int * zipFile ;
typedef int mz_stream_vtbl ;
typedef int int32_t ;


 scalar_t__ MZ_OK ;
 int * mz_stream_create (void**,int *) ;
 int mz_stream_delete (void**) ;
 scalar_t__ mz_stream_open (void*,void const*,int ) ;
 int * mz_stream_os_create (void**) ;
 int zipConvertAppendToStreamMode (int) ;
 int * zipOpen_MZ (void*,int,char const**) ;

zipFile zipOpen2_64(const void *path, int append, const char **globalcomment,
    zlib_filefunc64_def *pzlib_filefunc_def)
{
    zipFile zip = ((void*)0);
    int32_t mode = zipConvertAppendToStreamMode(append);
    void *stream = ((void*)0);

    if (pzlib_filefunc_def)
    {
        if (mz_stream_create(&stream, (mz_stream_vtbl *)*pzlib_filefunc_def) == ((void*)0))
            return ((void*)0);
    }
    else
    {
        if (mz_stream_os_create(&stream) == ((void*)0))
            return ((void*)0);
    }

    if (mz_stream_open(stream, path, mode) != MZ_OK)
    {
        mz_stream_delete(&stream);
        return ((void*)0);
    }

    zip = zipOpen_MZ(stream, append, globalcomment);

    if (zip == ((void*)0))
    {
        mz_stream_delete(&stream);
        return ((void*)0);
    }

    return zip;
}
