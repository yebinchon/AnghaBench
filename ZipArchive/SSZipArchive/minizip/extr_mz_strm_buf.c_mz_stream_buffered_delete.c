
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_stream_buffered ;


 int MZ_FREE (int *) ;

void mz_stream_buffered_delete(void **stream)
{
    mz_stream_buffered *buffered = ((void*)0);
    if (stream == ((void*)0))
        return;
    buffered = (mz_stream_buffered *)*stream;
    if (buffered != ((void*)0))
        MZ_FREE(buffered);
    *stream = ((void*)0);
}
