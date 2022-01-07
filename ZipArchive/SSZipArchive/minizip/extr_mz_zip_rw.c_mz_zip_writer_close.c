
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mem_stream; int * file_stream; int * buffered_stream; int * split_stream; int * zip_handle; scalar_t__ zip_cd; scalar_t__ comment; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_VERSION_MADEBY ;
 int mz_stream_buffered_delete (int **) ;
 int mz_stream_mem_close (int *) ;
 int mz_stream_mem_delete (int **) ;
 int mz_stream_os_delete (int **) ;
 int mz_stream_split_close (int *) ;
 int mz_stream_split_delete (int **) ;
 int mz_zip_close (int *) ;
 int mz_zip_delete (int **) ;
 int mz_zip_set_comment (int *,scalar_t__) ;
 int mz_zip_set_version_madeby (int *,int ) ;
 int mz_zip_writer_zip_cd (TYPE_1__*) ;

int32_t mz_zip_writer_close(void *handle)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t err = MZ_OK;


    if (writer->zip_handle != ((void*)0))
    {
        mz_zip_set_version_madeby(writer->zip_handle, MZ_VERSION_MADEBY);
        if (writer->comment)
            mz_zip_set_comment(writer->zip_handle, writer->comment);
        if (writer->zip_cd)
            mz_zip_writer_zip_cd(writer);

        err = mz_zip_close(writer->zip_handle);
        mz_zip_delete(&writer->zip_handle);
    }

    if (writer->split_stream != ((void*)0))
    {
        mz_stream_split_close(writer->split_stream);
        mz_stream_split_delete(&writer->split_stream);
    }

    if (writer->buffered_stream != ((void*)0))
        mz_stream_buffered_delete(&writer->buffered_stream);

    if (writer->file_stream != ((void*)0))
        mz_stream_os_delete(&writer->file_stream);

    if (writer->mem_stream != ((void*)0))
    {
        mz_stream_mem_close(writer->mem_stream);
        mz_stream_mem_delete(&writer->mem_stream);
    }

    return err;
}
