
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlib_filefunc64_def ;
typedef int * unzFile ;
typedef int mz_stream_vtbl ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int * mz_stream_create (void**,int *) ;
 int mz_stream_delete (void**) ;
 scalar_t__ mz_stream_open (void*,void const*,int ) ;
 int * mz_stream_os_create (void**) ;
 int * unzOpen_MZ (void*) ;

unzFile unzOpen2_64(const void *path, zlib_filefunc64_def *pzlib_filefunc_def)
{
    unzFile unz = ((void*)0);
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

    if (mz_stream_open(stream, path, MZ_OPEN_MODE_READ) != MZ_OK)
    {
        mz_stream_delete(&stream);
        return ((void*)0);
    }

    unz = unzOpen_MZ(stream);
    if (unz == ((void*)0))
    {
        mz_stream_delete(&stream);
        return ((void*)0);
    }
    return unz;
}
