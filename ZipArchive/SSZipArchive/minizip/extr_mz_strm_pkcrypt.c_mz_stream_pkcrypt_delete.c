
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_stream_pkcrypt ;


 int MZ_FREE (int *) ;

void mz_stream_pkcrypt_delete(void **stream)
{
    mz_stream_pkcrypt *pkcrypt = ((void*)0);
    if (stream == ((void*)0))
        return;
    pkcrypt = (mz_stream_pkcrypt *)*stream;
    if (pkcrypt != ((void*)0))
        MZ_FREE(pkcrypt);
    *stream = ((void*)0);
}
