
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_stream_posix ;


 int MZ_FREE (int *) ;

void mz_stream_os_delete(void **stream)
{
    mz_stream_posix *posix = ((void*)0);
    if (stream == ((void*)0))
        return;
    posix = (mz_stream_posix *)*stream;
    if (posix != ((void*)0))
        MZ_FREE(posix);
    *stream = ((void*)0);
}
