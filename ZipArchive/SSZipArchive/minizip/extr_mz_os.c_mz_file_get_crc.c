
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef int buf ;


 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int mz_crypt_crc32_update (int ,int *,scalar_t__) ;
 int mz_stream_os_close (void*) ;
 int mz_stream_os_create (void**) ;
 int mz_stream_os_delete (void**) ;
 scalar_t__ mz_stream_os_open (void*,char const*,int ) ;
 scalar_t__ mz_stream_os_read (void*,int *,int) ;

int32_t mz_file_get_crc(const char *path, uint32_t *result_crc)
{
    void *stream = ((void*)0);
    uint32_t crc32 = 0;
    int32_t read = 0;
    int32_t err = MZ_OK;
    uint8_t buf[16384];

    mz_stream_os_create(&stream);

    err = mz_stream_os_open(stream, path, MZ_OPEN_MODE_READ);

    if (err == MZ_OK)
    {
        do
        {
            read = mz_stream_os_read(stream, buf, sizeof(buf));

            if (read < 0)
            {
                err = read;
                break;
            }

            crc32 = mz_crypt_crc32_update(crc32, buf, read);
        }
        while ((err == MZ_OK) && (read > 0));

        mz_stream_os_close(stream);
    }

    *result_crc = crc32;

    mz_stream_os_delete(&stream);

    return err;
}
