
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_zip_reader ;


 int MZ_FREE (int *) ;
 int mz_zip_reader_close (int *) ;

void mz_zip_reader_delete(void **handle)
{
    mz_zip_reader *reader = ((void*)0);
    if (handle == ((void*)0))
        return;
    reader = (mz_zip_reader *)*handle;
    if (reader != ((void*)0))
    {
        mz_zip_reader_close(reader);
        MZ_FREE(reader);
    }
    *handle = ((void*)0);
}
