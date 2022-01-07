
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int compression_method; int flag; int crc; scalar_t__ uncompressed_size; scalar_t__ compressed_size; int modified_date; int aes_encryption_mode; scalar_t__ aes_version; } ;
struct TYPE_4__ {int entry_raw; int open_mode; int entry_opened; scalar_t__ entry_crc32; int * compress_stream; int * crypt_stream; TYPE_1__ file_info; int * stream; } ;
typedef TYPE_2__ mz_zip ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;






 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_READ ;
 int MZ_OPEN_MODE_WRITE ;
 scalar_t__ MZ_PARAM_ERROR ;
 int MZ_STREAM_PROP_COMPRESS_LEVEL ;
 int MZ_STREAM_PROP_FOOTER_SIZE ;
 int MZ_STREAM_PROP_HEADER_SIZE ;
 int MZ_STREAM_PROP_TOTAL_IN_MAX ;
 int MZ_STREAM_PROP_TOTAL_OUT_MAX ;
 scalar_t__ MZ_SUPPORT_ERROR ;
 int MZ_ZIP_FLAG_DATA_DESCRIPTOR ;
 int MZ_ZIP_FLAG_ENCRYPTED ;
 int MZ_ZIP_FLAG_LZMA_EOS_MARKER ;
 int mz_stream_bzip_create (int **) ;
 scalar_t__ mz_stream_get_prop_int64 (int *,int ,scalar_t__*) ;
 int mz_stream_lzma_create (int **) ;
 scalar_t__ mz_stream_open (int *,int *,int) ;
 int mz_stream_pkcrypt_create (int **) ;
 int mz_stream_pkcrypt_set_password (int *,char const*) ;
 int mz_stream_pkcrypt_set_verify (int *,int,int) ;
 int mz_stream_raw_create (int **) ;
 int mz_stream_set_base (int *,int *) ;
 int mz_stream_set_prop_int64 (int *,int ,scalar_t__) ;
 int mz_stream_wzaes_create (int **) ;
 int mz_stream_wzaes_set_encryption_mode (int *,int ) ;
 int mz_stream_wzaes_set_password (int *,char const*) ;
 int mz_stream_zlib_create (int **) ;
 int mz_zip_entry_close_int (void*) ;
 int mz_zip_time_t_to_dos_date (int ) ;

__attribute__((used)) static int32_t mz_zip_entry_open_int(void *handle, uint8_t raw, int16_t compress_level, const char *password)
{
    mz_zip *zip = (mz_zip *)handle;
    int64_t max_total_in = 0;
    int64_t header_size = 0;
    int64_t footer_size = 0;
    int32_t err = MZ_OK;
    uint8_t use_crypt = 0;

    if (zip == ((void*)0))
        return MZ_PARAM_ERROR;

    switch (zip->file_info.compression_method)
    {
    case 128:
    case 130:






        err = MZ_OK;
        break;
    default:
        return MZ_SUPPORT_ERROR;
    }


    if (zip->file_info.aes_version)
        return MZ_SUPPORT_ERROR;


    zip->entry_raw = raw;

    if ((zip->file_info.flag & MZ_ZIP_FLAG_ENCRYPTED) && (password != ((void*)0)))
    {
        if (zip->open_mode & MZ_OPEN_MODE_WRITE)
        {

            if (!zip->entry_raw)
                use_crypt = 1;
        }
        else if (zip->open_mode & MZ_OPEN_MODE_READ)
        {


            use_crypt = 1;
        }
    }

    if ((err == MZ_OK) && (use_crypt))
    {
        {
        }
    }

    if (err == MZ_OK)
    {
        if (zip->crypt_stream == ((void*)0))
            mz_stream_raw_create(&zip->crypt_stream);

        mz_stream_set_base(zip->crypt_stream, zip->stream);

        err = mz_stream_open(zip->crypt_stream, ((void*)0), zip->open_mode);
    }

    if (err == MZ_OK)
    {
        if (zip->entry_raw || zip->file_info.compression_method == 128)
            mz_stream_raw_create(&zip->compress_stream);
        else
            err = MZ_PARAM_ERROR;
    }

    if (err == MZ_OK)
    {
        if (zip->open_mode & MZ_OPEN_MODE_WRITE)
        {
            mz_stream_set_prop_int64(zip->compress_stream, MZ_STREAM_PROP_COMPRESS_LEVEL, compress_level);
        }
        else
        {

            if (zip->entry_raw || zip->file_info.compression_method == 128 || zip->file_info.flag & MZ_ZIP_FLAG_ENCRYPTED)

            {
                max_total_in = zip->file_info.compressed_size;
                mz_stream_set_prop_int64(zip->crypt_stream, MZ_STREAM_PROP_TOTAL_IN_MAX, max_total_in);

                if (mz_stream_get_prop_int64(zip->crypt_stream, MZ_STREAM_PROP_HEADER_SIZE, &header_size) == MZ_OK)
                    max_total_in -= header_size;
                if (mz_stream_get_prop_int64(zip->crypt_stream, MZ_STREAM_PROP_FOOTER_SIZE, &footer_size) == MZ_OK)
                    max_total_in -= footer_size;

                mz_stream_set_prop_int64(zip->compress_stream, MZ_STREAM_PROP_TOTAL_IN_MAX, max_total_in);
            }
            if ((zip->file_info.compression_method == 129) && (zip->file_info.flag & MZ_ZIP_FLAG_LZMA_EOS_MARKER) == 0)
            {
                mz_stream_set_prop_int64(zip->compress_stream, MZ_STREAM_PROP_TOTAL_IN_MAX, zip->file_info.compressed_size);
                mz_stream_set_prop_int64(zip->compress_stream, MZ_STREAM_PROP_TOTAL_OUT_MAX, zip->file_info.uncompressed_size);
            }
        }

        mz_stream_set_base(zip->compress_stream, zip->crypt_stream);

        err = mz_stream_open(zip->compress_stream, ((void*)0), zip->open_mode);
    }

    if (err == MZ_OK)
    {
        zip->entry_opened = 1;
        zip->entry_crc32 = 0;
    }
    else
    {
        mz_zip_entry_close_int(handle);
    }

    return err;
}
