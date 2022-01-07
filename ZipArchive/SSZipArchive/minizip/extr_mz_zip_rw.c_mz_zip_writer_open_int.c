
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zip_handle; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int mz_zip_create (int *) ;
 scalar_t__ mz_zip_open (int ,void*,scalar_t__) ;
 int mz_zip_writer_close (void*) ;

__attribute__((used)) static int32_t mz_zip_writer_open_int(void *handle, void *stream, int32_t mode)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t err = MZ_OK;

    mz_zip_create(&writer->zip_handle);
    err = mz_zip_open(writer->zip_handle, stream, mode);

    if (err != MZ_OK)
    {
        mz_zip_writer_close(handle);
        return err;
    }

    return MZ_OK;
}
