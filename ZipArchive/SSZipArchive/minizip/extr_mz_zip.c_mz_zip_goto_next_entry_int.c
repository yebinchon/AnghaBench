
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry_scanned; int file_info_stream; int file_info; int cd_stream; int cd_current_pos; } ;
typedef TYPE_1__ mz_zip ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 int MZ_SEEK_SET ;
 int MZ_STREAM_PROP_DISK_NUMBER ;
 scalar_t__ mz_stream_seek (int ,int ,int ) ;
 int mz_stream_set_prop_int64 (int ,int ,int) ;
 scalar_t__ mz_zip_entry_read_header (int ,int ,int *,int ) ;

__attribute__((used)) static int32_t mz_zip_goto_next_entry_int(void *handle)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t err = MZ_OK;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    zip->entry_scanned = 0;

    mz_stream_set_prop_int64(zip->cd_stream, MZ_STREAM_PROP_DISK_NUMBER, -1);

    err = mz_stream_seek(zip->cd_stream, zip->cd_current_pos, MZ_SEEK_SET);
    if (err == MZ_OK)
        err = mz_zip_entry_read_header(zip->cd_stream, 0, &zip->file_info, zip->file_info_stream);
    if (err == MZ_OK)
        zip->entry_scanned = 1;
    return err;
}
