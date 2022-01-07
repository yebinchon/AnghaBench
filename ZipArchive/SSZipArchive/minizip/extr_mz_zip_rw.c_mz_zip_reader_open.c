
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zip_handle; scalar_t__ cd_zipped; scalar_t__ cd_verified; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int mz_zip_create (int *) ;
 scalar_t__ mz_zip_open (int ,void*,int ) ;
 int mz_zip_reader_close (void*) ;
 int mz_zip_reader_unzip_cd (TYPE_1__*) ;
 int mz_zip_set_recover (int ,int) ;

int32_t mz_zip_reader_open(void *handle, void *stream)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;

    reader->cd_verified = 0;
    reader->cd_zipped = 0;

    mz_zip_create(&reader->zip_handle);
    mz_zip_set_recover(reader->zip_handle, 1);

    err = mz_zip_open(reader->zip_handle, stream, MZ_OPEN_MODE_READ);

    if (err != MZ_OK)
    {
        mz_zip_reader_close(handle);
        return err;
    }

    mz_zip_reader_unzip_cd(reader);
    return MZ_OK;
}
