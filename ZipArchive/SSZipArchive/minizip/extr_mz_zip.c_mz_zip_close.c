
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int open_mode; int * cd_stream; int * stream; int * comment; int * local_file_info_stream; int * file_info_stream; int * cd_mem_stream; } ;
typedef TYPE_1__ mz_zip ;
typedef scalar_t__ int32_t ;


 int MZ_FREE (int *) ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_WRITE ;
 scalar_t__ MZ_PARAM_ERROR ;
 int mz_stream_close (int *) ;
 int mz_stream_delete (int **) ;
 int mz_stream_mem_close (int *) ;
 int mz_stream_mem_delete (int **) ;
 scalar_t__ mz_zip_entry_close (void*) ;
 scalar_t__ mz_zip_entry_is_open (void*) ;
 int mz_zip_print (char*) ;
 scalar_t__ mz_zip_write_cd (void*) ;

int32_t mz_zip_close(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    mz_zip_print("Zip - Close\n");

    if (mz_zip_entry_is_open(handle) == MZ_OK)
        err = mz_zip_entry_close(handle);

    if ((err == MZ_OK) && (zip->open_mode & MZ_OPEN_MODE_WRITE))
        err = mz_zip_write_cd(handle);

    if (zip->cd_mem_stream != ((void*)0))
    {
        mz_stream_close(zip->cd_mem_stream);
        mz_stream_delete(&zip->cd_mem_stream);
    }

    if (zip->file_info_stream != ((void*)0))
    {
        mz_stream_mem_close(zip->file_info_stream);
        mz_stream_mem_delete(&zip->file_info_stream);
    }
    if (zip->local_file_info_stream != ((void*)0))
    {
        mz_stream_mem_close(zip->local_file_info_stream);
        mz_stream_mem_delete(&zip->local_file_info_stream);
    }

    if (zip->comment)
    {
        MZ_FREE(zip->comment);
        zip->comment = ((void*)0);
    }

    zip->stream = ((void*)0);
    zip->cd_stream = ((void*)0);

    return err;
}
