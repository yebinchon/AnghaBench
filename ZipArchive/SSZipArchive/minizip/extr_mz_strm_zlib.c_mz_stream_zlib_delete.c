
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_stream_zlib ;


 int MZ_FREE (int *) ;

void mz_stream_zlib_delete(void **stream)
{
    mz_stream_zlib *zlib = ((void*)0);
    if (stream == ((void*)0))
        return;
    zlib = (mz_stream_zlib *)*stream;
    if (zlib != ((void*)0))
        MZ_FREE(zlib);
    *stream = ((void*)0);
}
