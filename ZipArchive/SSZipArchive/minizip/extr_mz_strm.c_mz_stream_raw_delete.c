
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_stream_raw ;


 int MZ_FREE (int *) ;

void mz_stream_raw_delete(void **stream)
{
    mz_stream_raw *raw = ((void*)0);
    if (stream == ((void*)0))
        return;
    raw = (mz_stream_raw *)*stream;
    if (raw != ((void*)0))
        MZ_FREE(raw);
    *stream = ((void*)0);
}
