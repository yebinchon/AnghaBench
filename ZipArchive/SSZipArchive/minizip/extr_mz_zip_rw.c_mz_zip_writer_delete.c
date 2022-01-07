
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cert_data_size; struct TYPE_4__* cert_data; } ;
typedef TYPE_1__ mz_zip_writer ;


 int MZ_FREE (TYPE_1__*) ;
 int mz_zip_writer_close (TYPE_1__*) ;

void mz_zip_writer_delete(void **handle)
{
    mz_zip_writer *writer = ((void*)0);
    if (handle == ((void*)0))
        return;
    writer = (mz_zip_writer *)*handle;
    if (writer != ((void*)0))
    {
        mz_zip_writer_close(writer);

        if (writer->cert_data != ((void*)0))
            MZ_FREE(writer->cert_data);

        writer->cert_data = ((void*)0);
        writer->cert_data_size = 0;

        MZ_FREE(writer);
    }
    *handle = ((void*)0);
}
