
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {char const* cert_pwd; scalar_t__ cert_data_size; int * cert_data; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_ALLOC (scalar_t__) ;
 int MZ_FREE (int *) ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ MZ_READ_ERROR ;
 scalar_t__ mz_os_get_file_size (char const*) ;
 int mz_stream_os_close (void*) ;
 int mz_stream_os_create (void**) ;
 int mz_stream_os_delete (void**) ;
 scalar_t__ mz_stream_os_open (void*,char const*,int ) ;
 scalar_t__ mz_stream_os_read (void*,int *,scalar_t__) ;

int32_t mz_zip_writer_set_certificate(void *handle, const char *cert_path, const char *cert_pwd)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    void *cert_stream = ((void*)0);
    uint8_t *cert_data = ((void*)0);
    int32_t cert_data_size = 0;
    int32_t err = MZ_OK;

    if (cert_path == ((void*)0))
        return MZ_PARAM_ERROR;

    cert_data_size = (int32_t)mz_os_get_file_size(cert_path);

    if (cert_data_size == 0)
        return MZ_PARAM_ERROR;

    if (writer->cert_data != ((void*)0))
    {
        MZ_FREE(writer->cert_data);
        writer->cert_data = ((void*)0);
    }

    cert_data = (uint8_t *)MZ_ALLOC(cert_data_size);


    mz_stream_os_create(&cert_stream);
    err = mz_stream_os_open(cert_stream, cert_path, MZ_OPEN_MODE_READ);
    if (err == MZ_OK)
    {
        if (mz_stream_os_read(cert_stream, cert_data, cert_data_size) != cert_data_size)
            err = MZ_READ_ERROR;
        mz_stream_os_close(cert_stream);
    }
    mz_stream_os_delete(&cert_stream);

    if (err == MZ_OK)
    {
        writer->cert_data = cert_data;
        writer->cert_data_size = cert_data_size;
        writer->cert_pwd = cert_pwd;
    }
    else
    {
        MZ_FREE(cert_data);
    }

    return err;
}
